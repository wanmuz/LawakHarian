require 'spec_helper'

describe JokesController do
it "displays an error for a missing joke" do
get :show, :id => "not-here"
response.should redirect_to(jokes_path)
message = "The joke you were looking for could not be found."
flash[:alert].should eql(message)
end
end
