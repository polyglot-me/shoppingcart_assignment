class Shoppingcart < ActiveRecord::Base
  belongs_to :user
  has_many :products
  has_many :shoppingcartitems

  


  def  self.find(a)
       self.where("user_id = ?",a)
  end

  

  #@item = []
  
  def add_product(product)
   @item << product
  end
  #def self.create_cart
   # if Shoppingart.exists?(:user_id)
    #  @cart = Shoppingart.find(:user_id)
 #   else
    #  puts "not created"
    #end

  end


