class QuestionPointsController < ApplicationController
  before_action :set_question_point, only: [:show, :edit, :update, :destroy]

  # GET /question_points
  # GET /question_points.json
  def index
    @question_points = QuestionPoint.all
  end

  # GET /question_points/1
  # GET /question_points/1.json
  def show
  end

  # GET /question_points/new
  def new
    @question_point = QuestionPoint.new
  end

  # GET /question_points/1/edit
  def edit
  end

  # POST /question_points
  # POST /question_points.json
  def create
    @question_point = QuestionPoint.new(question_point_params)
    @question_point.user = current_user
    @question_point.point = 1

    begin
      @question_point.save!
      redirect_to Question.find(question_point_params[:question_id])
    rescue ActiveRecord::RecordNotUnique => e
      if e.message == 'SQLite3::ConstraintException: UNIQUE constraint failed: question_points.extra'
        # Do your thing....
      end
    end

  end

  # PATCH/PUT /question_points/1
  # PATCH/PUT /question_points/1.json
  def update
    respond_to do |format|
      if @question_point.update(question_point_params)
        format.html { redirect_to @question_point, notice: 'Question point was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_point }
      else
        format.html { render :edit }
        format.json { render json: @question_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_points/1
  # DELETE /question_points/1.json
  def destroy
    @question_point.destroy
    respond_to do |format|
      format.html { redirect_to question_points_url, notice: 'Question point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_point
      @question_point = QuestionPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_point_params
      params.require(:question_point).permit(:question_id, :point, :user_id, :extra)
    end
end
