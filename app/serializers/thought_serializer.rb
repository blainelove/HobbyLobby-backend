class ThoughtSerializer < ActiveModel::Serializer
  attributes :id, :likes, :description, :image, :user_id, :hobby_id
  
  
end
