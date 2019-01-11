class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :check_recaptcha, only: [:create]

  protected

  def after_sign_up_path_for(resource)
    new_address_path
  end

private

  def check_recaptcha
    self.resource = resource_class.new sign_up_params
    resource.validate
    unless verify_recaptcha(model: resource)
      respond_with_navigational(resource) {render:new}
    end
  end

  def customize_sign_up_params
    devise_parameter_sanitizer.permit :sign_up, keys: [:name, :password, :email, :password, :password_confirmation]
  end

end
