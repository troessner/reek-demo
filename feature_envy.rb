# Our good, old shoppingCart
class ShoppingCart < ActiveRecord::Base
  has_many :items

  def gross_price
    items.sum { |item| item.net + item.tax }
  end
end

# And the items that are stored in it
class Item < ActiveRecord::Base
  belongs_to :shopping_cart
end
