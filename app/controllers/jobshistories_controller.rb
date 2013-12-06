class JobshistoriesController < ApplicationController
  before_action :set_jobshistory, only: [:show, :edit, :update, :destroy]

  # GET /jobshistories
  # GET /jobshistories.json
  def index
    @jobshistories = Jobshistory.all
  end

  # GET /jobshistories/1
  # GET /jobshistories/1.json
  def show
  end

  # GET /jobshistories/new
  def new
    @jobshistory = Jobshistory.new
  end

  # GET /jobshistories/1/edit
  def edit
  end

  # POST /jobshistories
  # POST /jobshistories.json
  def create
    @jobshistory = Jobshistory.new(jobshistory_params)
    @jobshistory.curr_id = current_user.curriculum.id

    respond_to do |format|
      if @jobshistory.save
        format.html { redirect_to @jobshistory, notice: 'Jobshistory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobshistory }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobshistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobshistories/1
  # PATCH/PUT /jobshistories/1.json
  def update
    respond_to do |format|
      if @jobshistory.update(jobshistory_params)
        format.html { redirect_to @jobshistory, notice: 'Jobshistory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobshistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobshistories/1
  # DELETE /jobshistories/1.json
  def destroy
    @jobshistory.destroy
    respond_to do |format|
      format.html { redirect_to jobshistories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobshistory
      @jobshistory = Jobshistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobshistory_params
      params.require(:jobshistory).permit(:start, :end, :company, :location, :job)
    end
end
