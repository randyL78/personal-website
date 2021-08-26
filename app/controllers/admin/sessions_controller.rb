module Admin
  class SessionsController < AdminController
    def new
      @login = OpenStruct.new(
        user: nil,
        password: nil
      )
    end

    def create
      user = User.find_by(username: params[:username])
      return redirect_to(admin_login_url, alert: 'Invalid username/password combination') if
        user.blank? || !user.authenticate(params[:password])

      session[:current_user_id] = user.id
      redirect_to admin_root_path
    end

    def destroy
      session[:current_user_id] = nil
      redirect_to root_path
    end
  end
end
