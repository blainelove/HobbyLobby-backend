class User < ApplicationRecord
    has_many :hobbies
    has_many :thoughts
    has_many :favorites
end
