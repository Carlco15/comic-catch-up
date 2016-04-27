class AddIssuesToComics < ActiveRecord::Migration
  def change
    add_column :comics, :issues, :string
  end
end
