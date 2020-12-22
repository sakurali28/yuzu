class AddUserToHashtags < ActiveRecord::Migration[6.0]
  def change
    add_column :hashtags, :user_id, :integer
  end
end
