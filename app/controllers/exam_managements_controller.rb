class ExamManagementsController < ApplicationController
  before_action :set_exam_management, only: [:show, :edit, :update, :destroy]

  # GET /exam_managements
  # GET /exam_managements.json
  def index
    @exam_managements = ExamManagement.all
  end

  # GET /exam_managements/1
  # GET /exam_managements/1.json
  def show
  end

  # GET /exam_managements/new
  def new
    @exam_management = ExamManagement.new
  end

  # GET /exam_managements/1/edit
  def edit
  end

  # POST /exam_managements
  # POST /exam_managements.json
  def create
    @exam_management = ExamManagement.new(exam_management_params)

    respond_to do |format|
      if @exam_management.save
        format.html { redirect_to @exam_management, notice: 'Exam management was successfully created.' }
        format.json { render :show, status: :created, location: @exam_management }
      else
        format.html { render :new }
        format.json { render json: @exam_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_managements/1
  # PATCH/PUT /exam_managements/1.json
  def update
    respond_to do |format|
      if @exam_management.update(exam_management_params)
        format.html { redirect_to @exam_management, notice: 'Exam management was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_management }
      else
        format.html { render :edit }
        format.json { render json: @exam_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_managements/1
  # DELETE /exam_managements/1.json
  def destroy
    @exam_management.destroy
    respond_to do |format|
      format.html { redirect_to exam_managements_url, notice: 'Exam management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_management
      @exam_management = ExamManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_management_params
      params[:exam_management]
    end
end
