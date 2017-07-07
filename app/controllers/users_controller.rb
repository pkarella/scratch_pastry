class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])

  render :show
end

def user_params
  params.require(:user).permit(:username, :email)
end
end
