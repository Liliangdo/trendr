class UniversesController < ApplicationController

before_action :find_universe, only: [:show, :new, :create, :destroy]

  def index
    Universe.all
  end

  def show

  end
  def new
    @universe = Universe.new
  end

  def create
  end

  def destroy
  end


  private

  def find_universe
    @universe = Universe.find(params[:id])
  end

  def universe_params
    params.require(:universe).permit(
      :name,
      :price,
      :photo)
  end
end
