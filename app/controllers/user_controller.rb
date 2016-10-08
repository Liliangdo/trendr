class UserController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show
    authorize @user
    redirect_to root_path
  end

  def edit
    authorize @user
  end

  def update
    @user.update(user_params)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:users).permit(
      :first_name,
      :last_name,
      :phone_number,
      :email,
      :photo)
  end
end
