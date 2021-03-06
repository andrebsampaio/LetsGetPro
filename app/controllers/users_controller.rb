class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @friendships = @current_user.friendships.paginate(:page => params[:page], :per_page => 1)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @friendships = @user.friends.paginate(:page => params[:page], :per_page => 1)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to root_url
    else
      render 'new'
    end
  end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end


  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user

      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password_digest, :password, :password_confirmation, :workplace, :img_url,:position,:company_id)
    end

    def resolve_layout
      case action_name
        when "new","create"
          "signup"
        else
          "application"
      end
    end

