class ProductOrder < ActiveRecord::Base
has_and_belngs_to_many :products
has_and_belngs_to_many :orders
end
