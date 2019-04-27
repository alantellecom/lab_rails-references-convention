class CreateQuartos < ActiveRecord::Migration[5.2]
  def change
    create_table :quartos do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
