class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :gender, :weapons, :species, :overview, :favorite
end
