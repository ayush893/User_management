class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def create
  	#render plain: params[:user].inspect 
  	@user = User.new(user_params)
  	if @user.save
  	#redirec_to @user
  		render json: @user, status: :created
  	else
  		renser json: @user.error, status: unprocessable_entity

  	end


  end

  private def user_params
  	params.require(:user).permit(:username, :password)
  end
end
