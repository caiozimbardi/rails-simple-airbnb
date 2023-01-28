class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end
  # private

  # def set_flat
  #   @flat = Flat.find(params[:id])
  # end


end
