class GusersController < ApplicationController
  before_action :set_guser, only: [:show, :edit, :update, :destroy]

  # GET /gusers
  # GET /gusers.json
  def index
    @gusers = Guser.all
  end

  # GET /gusers/1
  # GET /gusers/1.json
  def show
  end

  # GET /gusers/new
  def new
    @guser = Guser.new
  end

  # GET /gusers/1/edit
  def edit
  end

  # POST /gusers
  # POST /gusers.json
  def create
    @guser = Guser.new(guser_params)

    respond_to do |format|
      if @guser.save
        format.html { redirect_to @guser, notice: 'Guser was successfully created.' }
        format.json { render :show, status: :created, location: @guser }
      else
        format.html { render :new }
        format.json { render json: @guser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gusers/1
  # PATCH/PUT /gusers/1.json
  def update
    respond_to do |format|
      if @guser.update(guser_params)
        format.html { redirect_to @guser, notice: 'Guser was successfully updated.' }
        format.json { render :show, status: :ok, location: @guser }
      else
        format.html { render :edit }
        format.json { render json: @guser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gusers/1
  # DELETE /gusers/1.json
  def destroy
    @guser.destroy
    respond_to do |format|
      format.html { redirect_to gusers_url, notice: 'Guser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guser
      @guser = Guser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guser_params
      params.require(:guser).permit(:email, :password)
    end
end
