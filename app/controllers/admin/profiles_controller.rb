module Admin
  class ProfilesController < AdminController
    before_action :authorize
    before_action :profile, only: [:edit, :update, :show, :destroy]

    def new
      @profile = Profile.new
    end

    def edit; end

    def show; end

    def create
      (redirect_to admin_profile_path(@profile) and return) if @profile = Profile.create(profile_params)

      render :new
    end

    def update
      (redirect_to admin_profile_path(@profile) and return) if @profile = Profile.update(profile_params)

      render :edit
    end

    def index
      @profiles = @current_user.profiles
    end

    def destroy
      Profile.find(params[:id]).destroy!
      redirect_to admin_profiles_path
    end

    private def profile_params
      p = params.require(:profile).permit(:name, :location, :about_me, :age, :quote, :quote_author, :is_published, :user_id)
      p.merge(user_id: @current_user.id)
    end

    private def profile
      @profile ||= Profile.find(params[:id])
    end
  end
end
