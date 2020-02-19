class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end


# validates :name, presence: true
#   validates :address, presence: true
#   validates :category, presence: true
#   validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }



# Validation
# A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
# A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
# Validate all model tests before moving to the routing layer. You can use this command:
