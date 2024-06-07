require "uri"
class BarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def index
    if params[:query].present?
      @current_params = params[:query]
      @bars = []
      Bar.all.each do |bar|
        bar.main_vibes.include?(params[:query]) ? @bars << bar : nil
      end
      bar_ids = @bars.map(&:id)
      @bars = Bar.where(id: bar_ids)
    else
      @bars = Bar.all
    end
    @markers = @bars.geocoded.map do |bar|
      {
        id: bar.id,
        lat: bar.latitude,
        lng: bar.longitude,
        marker_html: render_to_string(partial: "marker")
      }
    end
    @random_bar = Bar.order("RANDOM()").first
  end

  def show
    @bar = Bar.find(params[:id])
    query = "https://www.google.com/maps/search/?api=1&query=#{@bar.name} #{@bar.address}"
    @query_encode = URI::Parser.new.escape(query)
  end

  # def show
  #   @bar = Bar.find(params[:id])
  # end
end
