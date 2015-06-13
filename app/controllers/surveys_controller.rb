class SurveysController < ApplicationController
  before_action :logged_in? 
  before_action :set_survey, only: [:show, :edit, :update]

  # GET /surveys
  # GET /surveys.json
  def index
    @author = Author.find_by_id(session[:author_id])
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)
    @survey.author_id = session[:author_id]

    respond_to do |format|
      if @survey.save
        format.html { redirect_to edit_survey_path(@survey), notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey = Survey.find_by_id(params[:id])
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:name, :author_id, :publish, :description,
        questions_attributes: [:id, :name, :value, :required, :number, :description, :_destroy])
    end

    def logged_in?
      if Author.find_by_id(session[:author_id])
        return true
      else
        redirect_to sessions_login_path, notice: 'You must login before accessing this page.'
      end
    end
end
