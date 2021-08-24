module Admin
  class LoginController < AdminController
    def new
      @login = OpenStruct.new(
        user: nil,
        password: nil
      )
    end

    def create
      puts "Username: #{params}"
      puts "Password: #{params[:password]}"
      user = User.find_by(username: params[:username])
      return redirect_to(new_admin_login_url, alert: 'Invalid username/password combination') if
        user.blank? || !user.authenticate(params[:password])

      session[:current_user_id] = user.id
      redirect_to admin_root_path
    end
  end
end
