class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :title, presence: true
  validates :title, length: { maximum: 80 }
  validates :year, presence: true
  validates :year, numericality: true, length: { maximum: 4 }
  validates :author, presence: true
  validates :author, length: { maximum: 80 }
  # validates :favorite, inclusion: { in: [true, false] } # removed column
  validates :rating, numericality: true, allow_nil: true
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 100 }
end
