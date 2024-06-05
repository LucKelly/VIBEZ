class BarsController < ApplicationController
  def index
    if params[:query].present?
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
  end

  def show
    @bar = Bar.find(params[:id])
  end
end
