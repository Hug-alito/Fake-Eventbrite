class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]

  def show
    @user = current_user
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
