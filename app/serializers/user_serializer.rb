class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :created_at, :updated_at 
  has_many :favorites
  has_many :characters, serializer: CharacterSerializer
end
