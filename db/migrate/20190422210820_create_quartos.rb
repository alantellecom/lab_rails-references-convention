class CreateQuartos < ActiveRecord::Migration[5.2]
  def change
    create_table :quartos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
