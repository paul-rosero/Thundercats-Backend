class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # # GET /users
  # def index
  #   @users = User.all
  #   json_user = UserSerializer.new(@users).serialized_json
  #   render json: json_user
  # end

  # GET /users/1
  def show
    if logged_in?
      json_user = UserSerializer.new(@user).serialized_json
      render json: json_user
    else
      render json: { error: "You must be logged in to see anything!"}
    end
  end

  # POST /users
  def create 
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: UserSerializer.new(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    if @user.destroy
      render json: { data: "User Successuflly was deleted!" }
    else
      error_resp = {
        error: "User was not deleted, Please Try Again"
      }
      render json: error_resp
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :username, :password, :email)
    end
end
