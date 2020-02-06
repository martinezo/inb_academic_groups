class ApplicationController < ActionController::Base
  include Pundit

  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :authenticate_user!

  private

  def user_not_authorized
    flash[:alert] = t('notices.not_authorized')
    redirect_to admin_user_not_authorized_path
  end

end
