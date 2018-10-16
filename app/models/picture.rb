
class Picture < ApplicationRecord
  has_many :picture_comments
  validates :title, presence: true,
                    length: { minimum: 2 }
end
