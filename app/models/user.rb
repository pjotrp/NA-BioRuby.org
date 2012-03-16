class User < ActiveRecord::Base
  has_one  :identity

  def admin?
    role == "admin"
  end

  def new_user?
    role == "new_user"
  end

  def self.create_with_omniauth(auth)
    user = create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      if User.count.zero?
        user.role = "admin"
      else
        user.role = "new_user"
      end
    end
    if user.provider == "identity"
      Identity.all(conditions: "email = '#{user.email}'").first.update_attribute(:user_id, user.id)
    end
    return user
  end
end
