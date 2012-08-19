require 'spec_helper'
#require 'movies_controller.rb'
     
describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs find with same director' do
      #Movie.should_receive(:movie_direct_by).with('Star Wars').
      #post :movie_direct_by_path, {:movie => 'Star Wars'}
    end
    it 'should select the Search Results template for rendering' do
      #Movie.stub(:movie_direct_by)
      #post :movie_direct_by_path, {:movie => 'THX-1138'}
      #response.should render_template(:movie_direct_by_path)
    end
  end
end