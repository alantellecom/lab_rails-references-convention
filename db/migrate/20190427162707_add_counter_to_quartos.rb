class AddCounterToQuartos < ActiveRecord::Migration[5.2]
  def change
    add_column :quartos, :reviews_count, :integer
  end
end
