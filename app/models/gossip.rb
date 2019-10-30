class Gossip < ApplicationRecord
  belongs_to :user
  has_many :marks
  has_many :tags, through: :marks
  validates :title, 
    presence: true,
    uniqueness: true,
    length: { in: 3..14 }
  validates :content, presence: true
end
