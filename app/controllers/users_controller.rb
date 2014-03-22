class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(secure_params)
  	if @user.valid?
  	  @user.save
  	  flash[:notice] = "User: #{@user.name} has been created"
  	  redirect_to root_path
  	else
  	  render 'new'
  	end
  end

  private
    def secure_params
      params.require(:user).permit(:name, :email, :avatar)
    end
end
