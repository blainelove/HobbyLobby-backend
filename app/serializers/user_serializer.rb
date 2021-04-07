class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :favorites, :thoughts, :hobbies

end
