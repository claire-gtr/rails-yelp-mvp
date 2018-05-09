class Restaurant < ApplicationRecord
  CATEGORIES = [
    "french",
    "italian",
    "belgian",
    "japanese",
    "chinese"
  ]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  has_many :reviews, dependent: :destroy

end
