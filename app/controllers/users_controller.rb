class UsersController < ApplicationController
  layout"user"

  def index
    redirect_to(:action=>"products/list")
  end

  def login
    if request.post? #Once If the user clicks the button the Username and password should be submitted to the database
      # raise user.inspect
      user = User.authenticate(params[:name], params[:password]) #This Line checks UserName and Password in the database
      if user
        session[:id] = user.id #Makes the browser to remember the particular user
        @user=Shopingcart.new #creates the cart once user is logged in
        redirect_to(:controller => :products, :action=>"list") #If the user logged in successfully then he enters into the products list page
      else
        flash.now[:notice] = "Invalid user/password combination"
        render("login" ) # if user name and password doesn't matches from the database then he will be rendered to the login page
      end
    end

  end

  def register
    if request.post? and params[:user] # Sends the username to the database
      @user = User.new(params[:user]) #the username entered by the user gets stored in this instance variable @user
      if @user.save
        Shoppingcart.new(:user_id => @user.id).save #Once if the user gets Registered, automatically the cart gets created
        flash[:notice] = "User created."
        redirect_to(:controller => "products",:action => "list")
      else
        render("register")
      end
    end
  else
    @user = User.new(params[:user])
  end

  def logout
    session[:id]=nil
    redirect_to(:action=>"login")
  end

end

