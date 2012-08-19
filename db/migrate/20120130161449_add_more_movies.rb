class AddMoreMovies < ActiveRecord::Migration
  MORE_MOVIES = [
    {:title => 'Star Wars', :rating => 'PG', :release_date => '1977-05-25'},
    {:title => 'Blade Runner', :rating => 'PG', :release_date => '1982-06-25'},
    {:title => 'Alien', :rating => 'R', :release_date => '1979-05-25'},
    {:title => 'THX-1138', :rating => 'R', :release_date => '1971-03-11'},
  ]
  def up
    MORE_MOVIES.each do |movie|
      Movie.create!(movie)
    end
  end

  def down
    MORE_MOVIES.each do |movie|
      Movie.find_by_title_and_rating(movie[:title], movie[:rating]).destroy
    end
  end
end
