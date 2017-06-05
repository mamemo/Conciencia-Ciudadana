class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.text :comentario
      t.references :tema, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
