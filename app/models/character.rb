class Character < ApplicationRecord
  belongs_to :user
  belongs_to :afiliation
  has_many :favorites
end
