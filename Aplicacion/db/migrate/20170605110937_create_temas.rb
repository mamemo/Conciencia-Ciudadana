class CreateTemas < ActiveRecord::Migration[5.0]
  def change
    create_table :temas do |t|
      t.string :titulo
      t.string :autor
      t.text :contenido
      t.integer :user_id

      t.timestamps
    end
  end
end
