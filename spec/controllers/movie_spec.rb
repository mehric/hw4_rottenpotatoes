require 'spec_helper'
#require 'movies_controller.rb'
     
describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs find with same director' do
      Movie.should_receive(:find_same_director).with('Star Wars').
      post :search_tmdb, {:movie => 'Star Wars'}
    end
    it 'should select the Search Results template for rendering' do
      Movie.stub(:find_same_director)
      post :search_tmdb, {:movie => 'Star Wars'}
      response.should render_template('THX-1138')
    end
  end
end