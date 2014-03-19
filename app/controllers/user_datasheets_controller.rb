# -*- encoding : utf-8 -*-
class UserDatasheetsController < ApplicationController
  before_action :set_user_datasheet, only: [:show, :edit, :update, :destroy]

  # GET /user_datasheets
  # GET /user_datasheets.json
  def index
    @user_datasheets = UserDatasheet.all
  end

  # GET /user_datasheets/1
  # GET /user_datasheets/1.json
  def show
  end

  # GET /user_datasheets/new
  def new
    @user_datasheet = UserDatasheet.new
  end

  # GET /user_datasheets/1/edit
  def edit
  end

  # POST /user_datasheets
  # POST /user_datasheets.json
  def create
    @user_datasheet = UserDatasheet.new(user_datasheet_params)

    respond_to do |format|
      if @user_datasheet.save
        format.html { redirect_to @user_datasheet, notice: 'User datasheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_datasheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_datasheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_datasheets/1
  # PATCH/PUT /user_datasheets/1.json
  def update
    respond_to do |format|
      if @user_datasheet.update(user_datasheet_params)
        format.html { redirect_to @user_datasheet, notice: 'User datasheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_datasheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_datasheets/1
  # DELETE /user_datasheets/1.json
  def destroy
    @user_datasheet.destroy
    respond_to do |format|
      format.html { redirect_to user_datasheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_datasheet
      @user_datasheet = UserDatasheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_datasheet_params
      params.require(:user_datasheet).permit(:phone, :mobile, :title, :birthdate, :firstname, :lastname, :nickname)
    end
end
