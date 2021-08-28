module Admin
  class ExperiencesController < AdminController
    before_action :authorize
    before_action :experience, only: [:edit, :update, :show, :destroy]

    def create
      if @experience = Experience.create(experience_params)
        redirect_to admin_experience_path(@experience) and return
      end

      render :new
    end

    def destroy
      @experience.destroy!
      redirect_to admin_experience_group_path(@experience.experience_group_id)
    end

    def edit; end

    def index
      @experiences = @current_user.experiences
    end

    def new
      query_parameters = request.query_parameters
      @experience = Experience.new(experience_group_id: query_parameters['experience_group_id'])
    end

    def show; end

    def update
      if @experience.update(experience_params)
        redirect_to admin_experience_path(@experience) and return
      end

      render :edit
    end

    private def experience_params
      params.require(:experience).permit(:id, :start_date, :end_date, :company, :title, :location, :description, :experience_group_id)
    end

    private def experience
      @experience ||= Experience.find(params[:id])
    end
  end
end
