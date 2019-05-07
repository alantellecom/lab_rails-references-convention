class ChangeReferences < ActiveRecord::Migration[5.2]
  def change
    remove_reference :quartos, :usuario, index: true, foreign_key: true
    add_reference :quartos, :user, index: true, foreign_key: true
    remove_reference :reviews, :usuario, foreign_key: true
    add_reference :reviews, :user, index: true, foreign_key: true
    #remove_reference :review, [:usuario_id, :quarto_id], unique: true
    
  end
end
