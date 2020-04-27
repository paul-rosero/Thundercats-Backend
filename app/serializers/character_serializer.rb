class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :gender, :weapons, :species, :overview, :favorite, :afiliation
  has_many :users, through: :favorites
end
