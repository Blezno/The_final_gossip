class Gossip < ApplicationRecord
    belongs_to :user
    has_many :tags 

    validates :title,
    presence: {message:"Titre obligatoire"},
    length: {minimum: 2, maximum: 18, message:"Le titre doit faire entre 2 et 18 caractères."}

    validates :content,
    presence: {message:"Eh ben alors? On a pas écrit de Gossip?"}
    length: {minimum: 10, message:"Allez, fait un effort écrit un gossip de plus de 10 caractères!"}
end
