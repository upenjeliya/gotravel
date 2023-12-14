class Card < ApplicationRecord
  belongs_to :itinerary
  has_one :image

  def images
    # code here
  end
end
