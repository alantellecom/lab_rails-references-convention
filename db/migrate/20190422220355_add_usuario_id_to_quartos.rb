class AddUsuarioIdToQuartos < ActiveRecord::Migration[5.2]
  def change
    add_reference :quartos, :usuario, foreign_key: true
  end
end
