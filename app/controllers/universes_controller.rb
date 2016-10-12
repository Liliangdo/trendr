class UniversesController < ApplicationController

before_action :find_universe, only: [:show, :destroy]

  def index
    Universe.all
  end

  def show
  end

  def new
    @universe = Universe.new
  end

  def create
    @universe = Universe.new(universe_params)
    if @universe.save
      redirect_to root_path, notice: "You have successfully created an universe."
    else
      render :new
    end
  end

  def destroy
    @universe.update(universe_params)
    redirect_to root_path
  end


  private

  def find_universe
    @universe = Universe.find(params[:id])
  end

  def universe_params
    params.require(:universe).permit(
      :photo,
      :name,
      :price)
  end
end
