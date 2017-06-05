class AddUserIdToTemas < ActiveRecord::Migration[5.0]
  def change
    add_column :temas, :user_id, :integer
  end
end
