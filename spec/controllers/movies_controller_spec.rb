require 'spec_helper'
require 'movies_controller.rb'
     
describe MoviesController do
  describe 'Find Movies With Same Director' do
	#before :each do
	#  @fake_results = [mock(Movie),mock(Movie)]
	#end
	#it 'should follow the route to the similar movies by director page' do
	  #assert_routing('movies/1/find_similar', {:controller => 'movies', :action => 'find_similar', :id => '1'}) 
	#end
	it 'should call the method that performs the movies search' do
	  movie = Movie.new
	  movie.should_receive(:find_similar).with(1)
	  Movie.should_receive(:find).with(1).and_return(movie)
	  get :find_similar, {:id => '1'}

	  #movie = Movie.new
	  #movie.should_receive(:find_similar).with(1)
	  #post :find_similar, {:id => 1}
	  #movie = Movie.new
	  #Movie.should_receive(:find_similar)
	  #Movie.should_receive(:find).and_return(movie)
	  #get :find_similar, {:id => '1'}
	  #post movie_find_similar_path, {:id => 4}
	  #response.should render_template(:movie_direct_by_path)
	end

    #it 'should call the model method that performs find with same director' do
    #  Movie.should_receive(:directed_by).with('Star Wars').
    #  post :movie_direct_by_path, {:movie => 'Star Wars'}
    #end
    #it 'should select the Search Results template for rendering' do
    #  Movie.stub(:find_similar)
    #  post :find_similar, {:id => 4}
    #  response.should render_template(:find_similar)
    #end
  end
end