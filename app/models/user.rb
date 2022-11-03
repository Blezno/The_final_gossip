class User < ApplicationRecord
    belongs_to :city
    has_many :gossips, dependent :destroy

    validates :email,
        uniqueness: {message: "Email déjà utilisé!"},
        presence: {message: "Email obligatoire."}
    validates :password,
        presence: {message: "Mot de passe obligatoire"},
        length: {minimum: 6, maximum: 20, message:"Le mot de passe doit contenir entre 6 et 20 caractères."}
    validates :city_id,
        presence: {message: "La ville est obligatoire"}
end
