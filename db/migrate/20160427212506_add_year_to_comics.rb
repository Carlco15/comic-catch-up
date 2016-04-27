class AddYearToComics < ActiveRecord::Migration
  def change
    add_column :comics, :year, :string
  end
end
