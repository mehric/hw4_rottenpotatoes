class AddFieldnameToMovies < ActiveRecord::Migration
  def up
	add_column Movie, :director, :string #:movies
  end

  def down
	remove_column Movie, :director
  end
end
