class Product < ActiveRecord::Base
  has_one :order
  belongs_to :shoppingcart

  def self.find_cost_greater_than(max)
   self.where("cost > ?",max)
  end
  

 

  end



