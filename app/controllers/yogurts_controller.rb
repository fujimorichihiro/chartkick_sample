class YogurtsController < ApplicationController
  before_action :set_yogurt, only: [:show, :edit, :update, :destroy]

  # GET /yogurts
  # GET /yogurts.json
  def index
    @yogurts = Yogurt.all
  end

  # GET /yogurts/1
  # GET /yogurts/1.json
  def show
  end

  # GET /yogurts/new
  def new
    @yogurt = Yogurt.new
  end

  # GET /yogurts/1/edit
  def edit
  end

  # POST /yogurts
  # POST /yogurts.json
  def create
    @yogurt = Yogurt.new(yogurt_params)

    respond_to do |format|
      if @yogurt.save
        format.html { redirect_to @yogurt, notice: 'Yogurt was successfully created.' }
        format.json { render :show, status: :created, location: @yogurt }
      else
        format.html { render :new }
        format.json { render json: @yogurt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yogurts/1
  # PATCH/PUT /yogurts/1.json
  def update
    respond_to do |format|
      if @yogurt.update(yogurt_params)
        format.html { redirect_to @yogurt, notice: 'Yogurt was successfully updated.' }
        format.json { render :show, status: :ok, location: @yogurt }
      else
        format.html { render :edit }
        format.json { render json: @yogurt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yogurts/1
  # DELETE /yogurts/1.json
  def destroy
    @yogurt.destroy
    respond_to do |format|
      format.html { redirect_to yogurts_url, notice: 'Yogurt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yogurt
      @yogurt = Yogurt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yogurt_params
      params.require(:yogurt).permit(:name, :group)
    end
end
