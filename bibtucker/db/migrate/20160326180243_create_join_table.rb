class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :likes, :users do |t|
 		t.integer :like_id
 		t.integer :user_id
    end
  end
end
