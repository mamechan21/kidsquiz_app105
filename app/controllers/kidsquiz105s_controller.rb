class Kidsquiz105sController < ApplicationController
  before_action :set_kidsquiz105, only: [:show, :edit, :update, :destroy]

  # GET /kidsquiz105s
  # GET /kidsquiz105s.json
  def index
    @kidsquiz105s = Kidsquiz105.all
  end

  # GET /kidsquiz105s/1
  # GET /kidsquiz105s/1.json
  def show
  end

  # GET /kidsquiz105s/new
  def new
    @kidsquiz105 = Kidsquiz105.new
  end

  # GET /kidsquiz105s/1/edit
  def edit
  end

  # POST /kidsquiz105s
  # POST /kidsquiz105s.json
  def create
    @kidsquiz105 = Kidsquiz105.new(kidsquiz105_params)

    respond_to do |format|
      if @kidsquiz105.save
        format.html { redirect_to @kidsquiz105, notice: 'Kidsquiz105 was successfully created.' }
        format.json { render :show, status: :created, location: @kidsquiz105 }
      else
        format.html { render :new }
        format.json { render json: @kidsquiz105.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kidsquiz105s/1
  # PATCH/PUT /kidsquiz105s/1.json
  def update
    respond_to do |format|
      if @kidsquiz105.update(kidsquiz105_params)
        format.html { redirect_to @kidsquiz105, notice: 'Kidsquiz105 was successfully updated.' }
        format.json { render :show, status: :ok, location: @kidsquiz105 }
      else
        format.html { render :edit }
        format.json { render json: @kidsquiz105.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kidsquiz105s/1
  # DELETE /kidsquiz105s/1.json
  def destroy
    @kidsquiz105.destroy
    respond_to do |format|
      format.html { redirect_to kidsquiz105s_url, notice: 'Kidsquiz105 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kidsquiz105
      @kidsquiz105 = Kidsquiz105.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kidsquiz105_params
      params.require(:kidsquiz105).permit(:category)
    end
end
