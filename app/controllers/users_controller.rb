class UsersController < ApplicationController
  def new

  end

  def create
    puts params
    user = User.new
    user.username = params["username"]
    user.email = params["email"]
    user.bio = params["bio"]
    user.save
    if user.username.include?(" ")
      redirect_to "/error2"
    elsif user.id != nil
      redirect_to "/users/#{User.last.username}"
    else
      redirect_to "/error"
    end

  end

  def create2
    puts params
    user = User.new
    user.username = params["username"]
    user.email = params["email"]
    user.bio = params["bio"]
    user.save
    if user.username.include?(" ")
      redirect_to "/error2"
    elsif user.id != nil
      redirect_to "/users/#{User.last.username}"
    else
      redirect_to "/error"
    end
  
  end

  def create3
   @user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
   redirect_to "/users/#{User.last.username}"
 end

 def test
   if @user.new_record? == false
     redirect_to :action => “show”, :controller => “home”, :username => @user.username
   else
     redirect_to ‘/error’
   end
 end


  def show
    @username = params[:username]
    @id = User.find_by(username: @username).id
    @email = User.find_by(username: @username).email
    @bio = User.find_by(username: @username).bio
  end

  def error
  end

  def form_for
    @user = User.new
  end

  def form_tag

  end

end
