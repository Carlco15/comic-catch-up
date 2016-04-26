class CreateJoinTableComicsUsers < ActiveRecord::Migration
  def change
    create_join_table :comics, :users do |t|
      # t.index [:comic_id, :user_id]
      # t.index [:user_id, :comic_id]
    end
  end
end
