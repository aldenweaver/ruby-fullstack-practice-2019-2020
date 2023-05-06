class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    # @heroines = Heroine.all
    @heroine = Heroine.new
    # byebug
    @heroine.save
  end

  def create
    @heroine = Heroine.new(heroine_params)
    # byebug
  
    @heroine.save
  end


  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
