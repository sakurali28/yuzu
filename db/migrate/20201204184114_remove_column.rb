class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :hashtag, :integer
  end
end
