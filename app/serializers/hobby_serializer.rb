class HobbySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :favorites, :thoughts, :user_id

end
