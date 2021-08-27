module Admin
  class ExperienceGroupsController < AdminController
    before_action :authorize
    before_action :experience_group, only: [:edit, :update, :show, :destroy]

    def create
      if @experience_group = ExperienceGroup.create(experience_group_params)
        redirect_to admin_experience_group_path(@experience_group) and return
      end

      render :new
    end

    def destroy
      @experience_group.destroy!
      redirect_to admin_experience_groups_path
    end

    def edit; end

    def index
      @experience_groups = @current_user.experience_groups
    end

    def new
      @experience_group = ExperienceGroup.new
    end

    def show; end

    def update
      if @experience_group = ExperienceGroup.update(experience_group_params)
        redirect_to admin_experience_group_path(@experience_group) and return
      end

      render :edit
    end

    private def experience_group_params
      params.require(:experience_group).permit(:profile_id, :quote, :quote_author)
    end

    private def experience_group
      @experience_group ||= ExperienceGroup.find(params[:id])
    end
  end
end
