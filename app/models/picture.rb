
class Picture < ApplicationRecord
  has_many :commentsses
  validates :title, presence: true,
                    length: { minimum: 2 }
end
