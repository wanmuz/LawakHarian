class JokesController < ApplicationController
  def index
    
  end
  def new
    @joke = Joke.new
  end
  def create
    @joke = Joke.new(params[:joke])
    @joke.save
    flash[:notice] = "Joke has been created."
    redirect_to @joke
  end
  def show
    @joke = Joke.find(params[:id])
  end
end
