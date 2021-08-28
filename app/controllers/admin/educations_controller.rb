module Admin
  class EducationsController < AdminController
    before_action :authorize
    before_action :education, only: [:edit, :update, :show, :destroy]

    def create
      if @education = Education.create!(education_params)
        redirect_to admin_education_path(@education) and return
      end

      render :new
    end

    def destroy
      @education.destroy!
      redirect_to admin_education_group_path(@education.education_group_id)
    end

    def edit; end

    def index
      @educations = @current_user.educations
    end

    def new
      query_parameters = request.query_parameters
      @education = Education.new(education_group_id: query_parameters['education_group_id'])
    end

    def show; end

    def update
      if @education.update(education_params)
        redirect_to admin_education_path(@education) and return
      end

      render :edit
    end

    private def education_params
      params.require(:education).permit(:id, :start_date, :end_date, :level, :school, :gpa, :major, :minor, :location, :description, :education_group_id)
    end

    private def education
      @education ||= Education.find(params[:id])
    end
  end
end
