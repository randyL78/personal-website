module Admin
  class UsersController < AdminController
    before_action :authorize
    before_action :user

    def edit; end

    def show; end

    def update
      (redirect_to admin_user_path(@user) and return) if @user.update(user_params)

      render :edit
    end

    private def user_params
      params.require(:user).permit(:name, :title, :username, :password)
    end

    private def user
      @user ||= User.find(params[:id])
    end
  end
end
