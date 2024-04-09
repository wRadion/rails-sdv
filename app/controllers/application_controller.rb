class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale]
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
