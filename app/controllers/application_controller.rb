class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  after_filter :reset_last_captcha_code!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :autocheck
  protect_from_forgery with: :exception

  def autocheck
    if request.format == Mime::HTML
      unless Manage.find_by_mid(session[:mid])
         redirect_to static_pages_login_path, :alert => "你还没有登录，请先登录"
      end
    else
        authenticate_or_request_with_http_basic do |username, password|
          Manage.authenticate( params[:sessions][:username], params[:sessions][:password])
        end
    end
  end
end
