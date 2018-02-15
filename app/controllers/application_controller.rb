class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	# Todos los metodos de todos los controladores requieren logueo
  #before_filter :require_login << copiado de canario
  #before_action :require_login

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end
end