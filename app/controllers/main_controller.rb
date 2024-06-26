class MainController < ApplicationController
  def index
    @champions = Champion.all
  end
end
