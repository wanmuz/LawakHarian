class JokesController < ApplicationController
  before_filter :find_joke, :only => [:show, :edit, :update, :destroy]
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
  def edit
    @joke = Joke.find(params[:id])
  end
  def update
    @joke = Joke.find(params[:id])
   if @joke.update_attributes(params[:joke])
    flash[:notice] = "Joke has been updated."
    redirect_to @joke
    else
      flash[:alert] = "Joke has not been updated."
      render :action => "edit"
    end
  end
  def destroy
    @joke = Joke.find(params[:id])
    @joke.destroy
    flash[:notice] = "Joke has been deleted."
    redirect_to jokes_path
  end
  private
  def find_joke
@joke = Joke.find(params[:id])
rescue ActiveRecord::RecordNotFound
  flash[:alert] =   "The joke you were looking for could not be found."
redirect_to jokes_path 
  end
end
