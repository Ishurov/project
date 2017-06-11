class StillagesController < ApplicationController
  before_action :set_stillage, only: [:show, :edit, :update, :destroy]
  skip_before_action :check_app_auth, only: [:index, :show]

  # GET /stillages
  # GET /stillages.json
  def index
    @stillages = Stillage.all
  end

  # GET /stillages/1
  # GET /stillages/1.json
  def show
  end

  # GET /stillages/new
  def new
    @stillage = Stillage.new
  end

  # GET /stillages/1/edit
  def edit
  end

  # POST /stillages
  # POST /stillages.json
  def create
    @stillage = Stillage.new(stillage_params)

    respond_to do |format|
      if @stillage.save
        format.html { redirect_to @stillage, notice: 'Stillage was successfully created.' }
        format.json { render :show, status: :created, location: @stillage }
      else
        format.html { render :new }
        format.json { render json: @stillage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stillages/1
  # PATCH/PUT /stillages/1.json
  def update
    respond_to do |format|
      if @stillage.update(stillage_params)
        format.html { redirect_to @stillage, notice: 'Stillage was successfully updated.' }
        format.json { render :show, status: :ok, location: @stillage }
      else
        format.html { render :edit }
        format.json { render json: @stillage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stillages/1
  # DELETE /stillages/1.json
  def destroy
    # будем удалять зал если удаляемый стеллаж последний 
    @stillage.hall.destroy if @stillage.hall.stillages.pluck(:index).size == 1
    @stillage.destroy
    respond_to do |format|
      format.html { redirect_to stillages_url, notice: 'Stillage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stillage
      @stillage = Stillage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stillage_params
      params.require(:stillage).permit(:index, :hall_id, 
        hall_attributes: [:full_name, :short_name, :id])
    end
end
