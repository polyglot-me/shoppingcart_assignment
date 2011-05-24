class CartController < ApplicationController

  def find_cart
    
  end
  
  def add_to_cart
   logger.info "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
   logger.info params.inspect
   logger.info "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"

   @product=Product.find(params[:id])

   @shoppingcart =Shoppingcart.find(params[:id])
   @shoppingcart.add_product(product)
 end


end

