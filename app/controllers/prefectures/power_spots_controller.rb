class Prefectures::PowerSpotsController < ApplicationController
  def index
    @prefecture = Prefecture.find(params[:prefecture_id])
    @power_spots = @prefecture.power_spots #戻り値は配列なので、view側ではeachで処理する。
  end
  
  def show
    @prefecture = Prefecture.find(params[:prefecture_id])
    @power_spots = @prefecture.power_spots #戻り値は配列なので、view側ではeachで処理する。
    # @element = @power_spots[0].element
    elements = { 地: "text-warning", 水: "text-primary", 火: "text-danger", 風: "text-success" }
    # @element = elements[:水]
  end
end
