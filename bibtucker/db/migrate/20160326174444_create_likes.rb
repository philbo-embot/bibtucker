class CreateLikes < ActiveRecord::Migration

  def change
    create_table :likes do |t|
    	t.string :title
    	t.text :img_url
    	t.text :page_url
    	t.text :description
    	t.decimal :price
      	t.timestamps null: false
    end
  end
end
