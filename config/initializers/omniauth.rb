Rails.application.config.middleware.use OmniAuth::Builder do
  provider :identity, 
    fields: [:name, :email],
    on_failed_registration: lambda { |env|
      UsersController.action(:new).call(env)
    }
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user,repo,gist"
end

