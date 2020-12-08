class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :cooktime
      t.string :image
      t.string :ingredient
      t.string :direction
      t.integer :user_id

      t.timestamps
    end
  end
end
