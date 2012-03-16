class Identity < OmniAuth::Identity::Models::ActiveRecord
  belongs_to :user

  attr_writer :name

  def name
    @name ||= user.try(:name)
  end

  def user
    @user ||=  User.find_by_provider_and_uid("identity", uid)
  end

end
