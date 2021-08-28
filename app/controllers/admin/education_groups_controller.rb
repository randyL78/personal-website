module Admin
  class EducationGroupsController < AdminController
    before_action :authorize
    before_action :education_group, only: [:edit, :update, :show, :destroy]

    def create
      if @education_group = EducationGroup.create(education_group_params)
        redirect_to admin_education_group_path(@education_group) and return
      end

      render :new
    end

    def destroy
      @education_group.destroy!
      redirect_to admin_education_groups_path
    end

    def edit; end

    def index
      @education_groups = @current_user.education_groups
    end

    def new
      @education_group = EducationGroup.new
    end

    def show; end

    def update
      if @education_group.update(education_group_params)
        redirect_to admin_education_group_path(@education_group) and return
      end

      render :edit
    end

    private def education_group_params
      params.require(:education_group).permit(:profile_id, :quote, :quote_author)
    end

    private def education_group
      @education_group ||= EducationGroup.find(params[:id])
    end
  end
end