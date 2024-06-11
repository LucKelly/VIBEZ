class UserSubvibesController < ApplicationController

  def create
    @usersubvibe = UserSubvibe.new(subvibe_params)
    @usersubvibe.user = current_user
    if @usersubvibe.save
      redirect_to my_profile_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = current_user
    @usersubvibe = UserSubvibe.find_by(user_id: current_user.id)
    @usersubvibe.destroy
    redirect_to my_profile_path
  end

  private

  def subvibe_params
    params.require(:user_subvibe).permit(:subvibe_id)
  end
end
