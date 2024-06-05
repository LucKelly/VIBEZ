class BarsController < ApplicationController
  def index
    @bars = Bar.all.geocoded
    @markers = @bars.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        info_window_html: render_to_string(partial: "bar_popup", locals: { bar: }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
  end
end
