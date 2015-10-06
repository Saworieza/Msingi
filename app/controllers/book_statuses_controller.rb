class BookStatusesController < ApplicationController
  before_action :set_book_status, only: [:show, :edit, :update, :destroy]

  # GET /book_statuses
  # GET /book_statuses.json
  def index
    @book_statuses = BookStatus.all
  end

  # GET /book_statuses/1
  # GET /book_statuses/1.json
  def show
  end

  # GET /book_statuses/new
  def new
    @book_status = BookStatus.new
  end

  # GET /book_statuses/1/edit
  def edit
  end

  # POST /book_statuses
  # POST /book_statuses.json
  def create
    @book_status = BookStatus.new(book_status_params)

    respond_to do |format|
      if @book_status.save
        format.html { redirect_to @book_status, notice: 'Book status was successfully created.' }
        format.json { render :show, status: :created, location: @book_status }
      else
        format.html { render :new }
        format.json { render json: @book_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_statuses/1
  # PATCH/PUT /book_statuses/1.json
  def update
    respond_to do |format|
      if @book_status.update(book_status_params)
        format.html { redirect_to @book_status, notice: 'Book status was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_status }
      else
        format.html { render :edit }
        format.json { render json: @book_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_statuses/1
  # DELETE /book_statuses/1.json
  def destroy
    @book_status.destroy
    respond_to do |format|
      format.html { redirect_to book_statuses_url, notice: 'Book status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_status
      @book_status = BookStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_status_params
      params.require(:book_status).permit(:status, :comment)
    end
end
