class User < ActiveRecord::Base
 has_many :orders
 has_one :shoppingcart
 
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 

validates :name, :presence => true,
                  :length => { :maximum => 10 }
validates :email, :presence => true,
                  :format => {:with => email_regex },
                  :uniqueness => {:case_sensitive => false }

validates :password, :presence => true,
                    :confirmation => true,
                    :length => { :within => 6..10 }

  def self.authenticate(name="", password="")
    user = User.find_by_name(name)
        if user #&& user.password_match?(password)
      return user
    else
      return false
    end
  end


end


