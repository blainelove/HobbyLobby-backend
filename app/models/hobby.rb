class Hobby < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :thoughts
end
