class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :section
  has_many :line_items, dependent: :destroy

  def fake_image_url
    "http://loremflickr.com/320/240/" + name.parameterize
  end
  
end
