class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :section

  def fake_image_url
    "http://loremflickr.com/320/240/" + name.parameterize
  end
  
end
