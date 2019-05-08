class ChangeReferenceV2 < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, [:usuario_id, :quarto_id], unique: true
  end
end
