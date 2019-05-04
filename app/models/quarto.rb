class Quarto < ApplicationRecord
    delegate :nome, to: :usuario, prefix:true
    mount_uploader	:foto,	FotosUploader
    
    
    
    belongs_to :usuario
    has_many :reviews, dependent: :destroy
end
