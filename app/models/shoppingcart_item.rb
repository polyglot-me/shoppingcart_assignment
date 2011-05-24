class ShoppingcartItem < ActiveRecord::Base
belongs_to :shoppingcart
belongs_to :user

  attr_reader :product,:quantity

  def initialize(product)
  @product=product
  @quantity=1
end

def increment_quantity
  @quantity = @quantity+1
end
def price
#@price = price * @quantity
end

end
