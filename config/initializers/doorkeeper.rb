Doorkeeper.configure do
  orm :active_record

  resource_owner_authenticator do
    fail "Please configure doorkeeper resource_owner_authenticator block located in #{__FILE__}"
  end

  resource_owner_from_credentials do |routes|
    User.authenticate!(params[:username], params[:password])
  end
  
end
Doorkeeper.configuration.token_grant_types << "password"  
