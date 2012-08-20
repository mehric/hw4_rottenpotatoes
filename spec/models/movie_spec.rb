require 'spec_helper'
#require 'movies_controller.rb'
     
describe Movie do
  describe 'Creating Movie' do
	@Star_Wars_movie = Movie.create!({:title => 'Star Wars', :director => 'George Lucas', :rating => 'PG', :release_date => '1977-05-25'})
    @Star_Wars_movie.title.should == "Star Wars"
	@Alien_movie = Movie.create!({:title => 'Alien', :rating => 'R', :release_date => '1979-05-25'})
    @Alien_movie.title.should == "Alien"
  end	
end