class AllowedInterpretationsController < ApplicationController
  before_action :set_allowed_interpretation, only: [:show, :edit, :update, :destroy]

  # GET /allowed_interpretations
  # GET /allowed_interpretations.json
  def index
    @allowed_interpretations = AllowedInterpretation.all
  end

  # GET /allowed_interpretations/1
  # GET /allowed_interpretations/1.json
  def show
  end

  # GET /allowed_interpretations/new
  def new
    @allowed_interpretation = AllowedInterpretation.new
  end

  # GET /allowed_interpretations/1/edit
  def edit
  end

  # POST /allowed_interpretations
  # POST /allowed_interpretations.json
  def create
    @allowed_interpretation = AllowedInterpretation.new(allowed_interpretation_params)

    respond_to do |format|
      if @allowed_interpretation.save
        format.html { redirect_to @allowed_interpretation, notice: 'Allowed interpretation was successfully created.' }
        format.json { render :show, status: :created, location: @allowed_interpretation }
      else
        format.html { render :new }
        format.json { render json: @allowed_interpretation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allowed_interpretations/1
  # PATCH/PUT /allowed_interpretations/1.json
  def update
    respond_to do |format|
      if @allowed_interpretation.update(allowed_interpretation_params)
        format.html { redirect_to @allowed_interpretation, notice: 'Allowed interpretation was successfully updated.' }
        format.json { render :show, status: :ok, location: @allowed_interpretation }
      else
        format.html { render :edit }
        format.json { render json: @allowed_interpretation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allowed_interpretations/1
  # DELETE /allowed_interpretations/1.json
  def destroy
    @allowed_interpretation.destroy
    respond_to do |format|
      format.html { redirect_to allowed_interpretations_url, notice: 'Allowed interpretation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allowed_interpretation
      @allowed_interpretation = AllowedInterpretation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allowed_interpretation_params
      params.require(:allowed_interpretation).permit(:name, :description, :direction, :formal_quality)
    end
end
