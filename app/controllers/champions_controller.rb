class ChampionsController < ApplicationController
  def index
    @champions = Champion.all
  end
  def new
    @champion = Champion.new
  end
  def create
    @champion = Champion.new Champion_params
    if @champion.save
      redirect_to Champions_path
    else
      render :new
    end
  end
end
