class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :check_recaptcha, only: [:create]

  protected

  def after_sign_up_path_for(resource)
    new_address_path
  end

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

private

  def check_recaptcha
    self.resource = resource_class.new sign_up_params
    resource.validate
    unless verify_recaptcha(model: resource)
      respond_with_navigational(resource) {render:new}
    end
  end

end
