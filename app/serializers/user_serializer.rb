class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :favorites, :thoughts, :hobbies

  # has_many :hobbies
end
