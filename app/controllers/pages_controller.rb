class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing_page]

  def landing_page
  end

  # own user profile page
  def my_profile
    @user = current_user
    @usersubvibe = UserSubvibe.new
  end

  def other_profile
    @user = User.find(params[:id])
  end
end
