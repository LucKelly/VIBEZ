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
    @usersubvibe = UserSubvibe.find(params[:id])
    @usersubvibe.destroy
    redirect_to my_profile_path, notice: 'vibe removed'
  end

  private

  def subvibe_params
    params.require(:user_subvibe).permit(:subvibe_id)
  end
end
