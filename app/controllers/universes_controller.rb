class UniversesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
before_action :find_universe, only: [:show, :destroy]

  def index
    @universes = Universe.all
    session[:category] = params[:search][:category]

    if params[:search].nil?
      @universes = Universe.where.not(category: nil)
    else
      @search = params[:search]
      @universes = Universe.where(@search[:category])
    end
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
