class Quarto < ApplicationRecord
    delegate :nome, to: :user, prefix:true
    mount_uploader	:foto,	FotosUploader
    belongs_to :user
    has_many :reviews, dependent: :destroy
end
