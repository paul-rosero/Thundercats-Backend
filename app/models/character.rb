class Character < ApplicationRecord
  belongs_to :afiliation
  has_many :favorites
  has_many :users, through: :favorites
end
