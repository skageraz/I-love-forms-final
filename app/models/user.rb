class User < ApplicationRecord
  #Validation de l'utilisateur, Unicité et présence obligatoire
  validates :username, presence: true, uniqueness: true
end
