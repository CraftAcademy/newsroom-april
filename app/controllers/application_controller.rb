class ApplicationController < ActionController::Base
  before_action :set_locale

  private
  def set_locale
    I18n.locale = I18n.available_locales.include?(params[:locale]&.to_sym) ? params[:locale] : I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end
end
