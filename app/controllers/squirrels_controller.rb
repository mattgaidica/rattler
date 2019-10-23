class SquirrelsController < ApplicationController
  before_action :set_squirrel, only: [:show, :edit, :update, :destroy]

  # GET /squirrels
  # GET /squirrels.json
  def index
    @squirrels = Squirrel.all
  end

  # GET /squirrels/1
  # GET /squirrels/1.json
  def show
  end

  # GET /squirrels/new
  def new
    @squirrel = Squirrel.new
  end

  # GET /squirrels/1/edit
  def edit
  end

  # POST /squirrels
  # POST /squirrels.json
  def create
    @squirrel = Squirrel.new(squirrel_params)

    respond_to do |format|
      if @squirrel.save
        format.html { redirect_to @squirrel, notice: 'Squirrel was successfully created.' }
        format.json { render :show, status: :created, location: @squirrel }
      else
        format.html { render :new }
        format.json { render json: @squirrel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squirrels/1
  # PATCH/PUT /squirrels/1.json
  def update
    respond_to do |format|
      if @squirrel.update(squirrel_params)
        format.html { redirect_to @squirrel, notice: 'Squirrel was successfully updated.' }
        format.json { render :show, status: :ok, location: @squirrel }
      else
        format.html { render :edit }
        format.json { render json: @squirrel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squirrels/1
  # DELETE /squirrels/1.json
  def destroy
    @squirrel.destroy
    respond_to do |format|
      format.html { redirect_to squirrels_url, notice: 'Squirrel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squirrel
      @squirrel = Squirrel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squirrel_params
      params.require(:squirrel).permit(:name)
    end
end
