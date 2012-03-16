class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    if user.nil?
      user = User.create_with_omniauth(auth)
      notice = "Your account has been created successfully!"
    else
      notice = "Signed in successfully!"
    end
    session[:user_id] = user.id
    redirect_to "/contribute", notice: notice
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/contribute", notice: "Signed out!"
  end
end
