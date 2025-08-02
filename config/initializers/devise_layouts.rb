Rails.application.config.to_prepare do
  Devise::SessionsController.layout "devise"
  Devise::RegistrationsController.layout "devise"
  Devise::PasswordsController.layout "devise"
  Devise::ConfirmationsController.layout "devise"
end
