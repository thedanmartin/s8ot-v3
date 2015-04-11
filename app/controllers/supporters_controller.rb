class SupportersController < ApplicationController
  before_action :set_supporter, only: [:show, :edit, :update, :destroy]

  # GET /supporters
  # GET /supporters.json
  def index
    @supporters = Supporter.all
  end

  # GET /supporters/1
  # GET /supporters/1.json
  def show
  end

  # GET /supporters/new
  def new
    @supporter = Supporter.new
  end

  # GET /supporters/1/edit
  def edit
  end

  # POST /supporters
  # POST /supporters.json
  def create
    @supporter = Supporter.new(supporter_params)

    respond_to do |format|
      if @supporter.save
        format.html { redirect_to @supporter, notice: 'Supporter was successfully created.' }
        format.json { render :show, status: :created, location: @supporter }
      else
        format.html { render :new }
        format.json { render json: @supporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supporters/1
  # PATCH/PUT /supporters/1.json
  def update
    respond_to do |format|
      if @supporter.update(supporter_params)
        format.html { redirect_to @supporter, notice: 'Supporter was successfully updated.' }
        format.json { render :show, status: :ok, location: @supporter }
      else
        format.html { render :edit }
        format.json { render json: @supporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supporters/1
  # DELETE /supporters/1.json
  def destroy
    @supporter.destroy
    respond_to do |format|
      format.html { redirect_to supporters_url, notice: 'Supporter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supporter
      @supporter = Supporter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supporter_params
      params.require(:supporter).permit(:name, :years_traveling, :ejections)
    end
end
