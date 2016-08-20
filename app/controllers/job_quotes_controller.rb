class JobQuotesController < ApplicationController
  before_action :set_job_quote, only: [:show, :edit, :update, :destroy]

  # GET /job_quotes
  # GET /job_quotes.json
  def index
    @job_quotes = JobQuote.all
  end

  # GET /job_quotes/1
  # GET /job_quotes/1.json
  def show
  end

  # GET /job_quotes/new
  def new
    @job_quote = JobQuote.new
  end

  # GET /job_quotes/1/edit
  def edit
  end

  # POST /job_quotes
  # POST /job_quotes.json
  def create
    @job_quote = JobQuote.new(job_quote_params)

    respond_to do |format|
      if @job_quote.save
        format.html { redirect_to @job_quote, notice: 'Job quote was successfully created.' }
        format.json { render :show, status: :created, location: @job_quote }
      else
        format.html { render :new }
        format.json { render json: @job_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_quotes/1
  # PATCH/PUT /job_quotes/1.json
  def update
    respond_to do |format|
      if @job_quote.update(job_quote_params)
        format.html { redirect_to @job_quote, notice: 'Job quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_quote }
      else
        format.html { render :edit }
        format.json { render json: @job_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_quotes/1
  # DELETE /job_quotes/1.json
  def destroy
    @job_quote.destroy
    respond_to do |format|
      format.html { redirect_to job_quotes_url, notice: 'Job quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_quote
      @job_quote = JobQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_quote_params
      params.require(:job_quote).permit(:job_id, :user_id, :price)
    end
end
