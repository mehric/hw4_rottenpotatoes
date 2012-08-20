require 'spec_helper'
#require 'movie.rb'
#require 'movies_controller.rb'
     
describe MoviesController, :type => :controller do
  describe 'Find Movies With Same Director' do
	before :each do
	 # @fake_results = [mock('Movie', :id => 1, :name => 'Star Wars', :rating => 'PG', :release_date => '1977-05-25'),mock('Movie', :id => 4, :name => 'THX-1138', :rating => 'R', :release_date => '1971-03-11')]
		
		#Movie.create!({:name => 'Star Wars', :director => 'George Lucas', :rating => 'PG', :release_date => '1977-05-25'})
		
	end
	it 'should follow the route to the similar movies by director page' do
	  assert_routing('movies/1/find_similar', {:controller => 'movies', :action => 'find_similar', :id => '1'}) 
	end
	it "call method find_similar with 'Star Wars' (happy path)" do
	  @fake_results = [mock(Movie, :id => 1),mock(Movie, :id => 4)]
      MoviesController.stub(:find_similar)
	  movie = Movie.new
	  # movie.should_receive(:find_by_same_director).with(1).and_return(@fake_results)
	  movie.stub(:find_by_same_director).with(1).and_return(@fake_results)
	  post :find_similar, {:id => '1'}
	  # response.should redirect_to(:action=>"find_similar", :controller=>"movies", :id=>1)
	end
	it "call method find_similar with 'Star Wars' (happy path)3" do
	  @fake_results = [mock(Movie, :id => 1),mock(Movie, :id => 4)]
      MoviesController.stub(:find_similar)
	  movie = Movie.new
	  movie.stub(:find_by_same_director).with(1).and_return(@fake_results)
	end

	it "call method find_similar with 'Alien' (sad path empty string)" do
	  get 'find_similar', {:id => 3}
	  #Movie.find_by_title('Alien').id
	  movie = Movie.new
	  movie.stub(:find_by_same_director).with(3).and_return(nil)
	  # response.should redirect_to(:action=>"index", :controller=>"movies") 
	end
  end
end