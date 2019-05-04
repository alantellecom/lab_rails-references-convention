class AddFotoToQuartos < ActiveRecord::Migration[5.2]
  def change
    add_column :quartos, :foto, :string
  end
end
