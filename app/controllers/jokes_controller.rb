class JokesController < ApplicationController
  def index
    @jokes = Joke.all
  end
  def new
    @joke = Joke.new
  end
  def create
    @joke = Joke.new(params[:joke])
    if @joke.save
    flash[:notice] = "Joke has been created."
    redirect_to @joke
    else
    flash[:notice] = "Joke has not been created."
   render :action => "new"
    end
  end
  def show
    @joke = Joke.find(params[:id])
  end
  
end
