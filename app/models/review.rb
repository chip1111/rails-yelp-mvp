class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates_numericality_of :rating, :on => :create
  validates :rating, inclusion: { in: (0..5).to_a, allow_nil: false }

end
