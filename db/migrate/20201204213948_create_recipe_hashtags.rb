class CreateRecipeHashtags < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_hashtags do |t|
      t.integer :recipe_id
      t.integer :hashtag_id

      t.timestamps
    end
  end
end
