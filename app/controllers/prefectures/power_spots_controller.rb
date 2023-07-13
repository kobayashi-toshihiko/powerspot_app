class Prefectures::PowerSpotsController < ApplicationController
  def index
    @prefecture = Prefecture.find(params[:prefecture_id])
    @power_spots = @prefecture.power_spots #戻り値は配列なので、view側ではeachで処理する。
  end
end
