class OpinionsController < ApplicationController
  before_action :set_opinion, only: %i[show edit update destroy]

  # GET /opinions or /opinions.json
  def index
    @opinions = Opinion.all
    @opinion = Opinion.new
    @user = User.new
  end

  # GET /opinions/1 or /opinions/1.json
  def show; end

  # GET /opinions/new
  def new
    @user = User.new
    @opinion = Opinion.new
    @opinions = Opinion.all.order(created_at: :desc).includes(:user)
  end

  # GET /opinions/1/edit
  def edit; end

  # POST /opinions or /opinions.json

  def create
    @opinion = current_user.opinions.build(opinion_params)
    if @opinion.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  # PATCH/PUT /opinions/1 or /opinions/1.json

  def update
    respond_to do |format|
      if @opinion.update(opinion_params)
        format.html { redirect_to @opinion, notice: 'Opinion was successfully updated.' }
        format.json { render :show, status: :ok, location: @opinion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opinions/1 or /opinions/1.json
  def destroy
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to opinions_url, notice: 'Opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def opinion_params
    params.require(:opinion).permit(:content)
  end
end
