class User < ApplicationRecord
    has_many :favorites
    has_many :characters, through: :favorites

    has_secure_password
    validates :username, :name, :email, presence: true
    validates :username, :email, uniqueness: true
end
