class AdminController < ApplicationController
  private def current_user
    @current_user ||= User.find_by(id: session[:current_user_id])
  end

  private def logged_in?
    current_user.present?
  end

  private def authorize
    return if current_user

    redirect_to admin_login_url, notice: 'Please log in'
  end
end
