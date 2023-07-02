class PowerSpotsController < ApplicationController
  def index
    youngest = 5
    oldest = 85
    @youngest_year = (Time.now.year) - youngest
    @oldest_year = (Time.now.year) - oldest
  end

end
