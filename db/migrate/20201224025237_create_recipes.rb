class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.string :image
      t.string :servings
      t.integer :cooktime
      t.string :ingredients
      t.string :directions
      t.string :notes

      t.timestamps
    end
  end
end
