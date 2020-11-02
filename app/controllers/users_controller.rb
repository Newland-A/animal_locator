class UsersController < ApplicationController
 
  def index
    @user = User.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :owner_id)
  end

end
