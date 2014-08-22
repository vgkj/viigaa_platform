class SessionsController < ApplicationController
  skip_before_filter :autocheck, only: [:create]
  protect_from_forgery :except => :create

  def new
  end

  def create
    manage = Manage.find_by(username: params[:sessions][:username])
    if captcha_valid?params[:sessions][:captcha]
      if manage && manage.authenticate(params[:sessions][:password])
        date = Time.new
        date = date.strftime("%Y-%m-%d")
        manage.update_attribute(:logintime, date)
        session[:mid] = manage.mid;
        redirect_to '/static_pages/main'
      else
        flash[:alert] = '用户名或密码错误' # Not quite right!
        redirect_to '/static_pages/login'
      end
    else
      flash[:alert] = "验证码错误"
      redirect_to '/static_pages/login'
    end
  end

  def destroy
  end
end
