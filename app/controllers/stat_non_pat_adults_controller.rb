class StatNonPatAdultsController < ApplicationController
  before_action :set_stat_non_pat_adult, only: [:show, :edit, :update, :destroy]

  # GET /stat_non_pat_adults
  # GET /stat_non_pat_adults.json
  def index
    @stat_non_pat_adults = StatNonPatAdult.all
  end

  # GET /stat_non_pat_adults/1
  # GET /stat_non_pat_adults/1.json
  def show
  end

  # GET /stat_non_pat_adults/new
  def new
    @stat_non_pat_adult = StatNonPatAdult.new
  end

  # GET /stat_non_pat_adults/1/edit
  def edit
  end

  # POST /stat_non_pat_adults
  # POST /stat_non_pat_adults.json
  def create
    @stat_non_pat_adult = StatNonPatAdult.new(stat_non_pat_adult_params)

    respond_to do |format|
      if @stat_non_pat_adult.save
        format.html { redirect_to @stat_non_pat_adult, notice: 'Stat non pat adult was successfully created.' }
        format.json { render :show, status: :created, location: @stat_non_pat_adult }
      else
        format.html { render :new }
        format.json { render json: @stat_non_pat_adult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stat_non_pat_adults/1
  # PATCH/PUT /stat_non_pat_adults/1.json
  def update
    respond_to do |format|
      if @stat_non_pat_adult.update(stat_non_pat_adult_params)
        format.html { redirect_to @stat_non_pat_adult, notice: 'Stat non pat adult was successfully updated.' }
        format.json { render :show, status: :ok, location: @stat_non_pat_adult }
      else
        format.html { render :edit }
        format.json { render json: @stat_non_pat_adult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stat_non_pat_adults/1
  # DELETE /stat_non_pat_adults/1.json
  def destroy
    @stat_non_pat_adult.destroy
    respond_to do |format|
      format.html { redirect_to stat_non_pat_adults_url, notice: 'Stat non pat adult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat_non_pat_adult
      @stat_non_pat_adult = StatNonPatAdult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stat_non_pat_adult_params
      params.require(:stat_non_pat_adult).permit(:mean, :mean, :sd, :sd, :min, :min, :max, :max, :freq, :median, :median, :mode, :mode, :sk, :sk, :ku, :ku, :variable)
    end
end
