class ProductsController < ApplicationController
 layout "user"
  def list
     @products = Product.all
  end

def show
end
end
