class SpartanBasketballsController < ApplicationController
  before_action :set_spartan_basketball, only: [:show, :edit, :update, :destroy]

  # GET /spartan_basketballs
  # GET /spartan_basketballs.json
  def index
    @spartan_basketballs = SpartanBasketball.all
  end

  # GET /spartan_basketballs/1
  # GET /spartan_basketballs/1.json
  def show
  end

  # GET /spartan_basketballs/new
  def new
    @spartan_basketball = SpartanBasketball.new
  end

  # GET /spartan_basketballs/1/edit
  def edit
  end

  # POST /spartan_basketballs
  # POST /spartan_basketballs.json
  def create
    @spartan_basketball = SpartanBasketball.new(spartan_basketball_params)

    respond_to do |format|
      if @spartan_basketball.save
        format.html { redirect_to @spartan_basketball, notice: 'Spartan basketball was successfully created.' }
        format.json { render :show, status: :created, location: @spartan_basketball }
      else
        format.html { render :new }
        format.json { render json: @spartan_basketball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spartan_basketballs/1
  # PATCH/PUT /spartan_basketballs/1.json
  def update
    respond_to do |format|
      if @spartan_basketball.update(spartan_basketball_params)
        format.html { redirect_to @spartan_basketball, notice: 'Spartan basketball was successfully updated.' }
        format.json { render :show, status: :ok, location: @spartan_basketball }
      else
        format.html { render :edit }
        format.json { render json: @spartan_basketball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spartan_basketballs/1
  # DELETE /spartan_basketballs/1.json
  def destroy
    @spartan_basketball.destroy
    respond_to do |format|
      format.html { redirect_to spartan_basketballs_url, notice: 'Spartan basketball was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spartan_basketball
      @spartan_basketball = SpartanBasketball.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spartan_basketball_params
      params.require(:spartan_basketball).permit(:player_name, :player_number, :has_graduated)
    end
end
