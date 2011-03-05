class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_user_locale

  protected
  def set_user_locale
    I18n.locale = cookies[:hl] || params[:hl] || :ru
    redirect_to root_url unless [:ru, :en].include? I18n.locale
  end
end
