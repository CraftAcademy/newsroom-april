class ApplicationController < ActionController::Base
  include Pundit
  before_action :set_locale
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
  def user_not_authorized
    redirect_to root_path, notice: 'You are not authorized to perform this action!'
  end

  def set_locale
    I18n.locale = I18n.available_locales.include?(params[:locale]&.to_sym) ? params[:locale] : I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end
end
