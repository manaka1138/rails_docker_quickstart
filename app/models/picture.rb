
class Picture < ApplicationRecord　
  has_many :picture_comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 2 }
end
