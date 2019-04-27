class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :usuario
      t.references :quarto
      t.integer :pontos
      t.references [:usuario_id, :quarto_id], unique: true

      t.timestamps
    end
  end
end
