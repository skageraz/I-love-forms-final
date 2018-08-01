class UsersController < ApplicationController
  #Amène à la page création
  def new

  end

  #Méthode Post du formulaire HTML
  def create 
    puts params
    user = User.new
    user.username = params["username"]
    user.email = params["email"]
    user.bio = params["bio"]
    user.save
    if user.username.include?(" ") #si le nom de l'utilisateur contient un espace, il est redirigé vers la page erreur
      redirect_to "/error2" #technique qui permet de générer une page dynamique à partir du nom de l'user, si l'user_id n'est pas nul
    elsif user.id != nil
      redirect_to "/users/#{User.last.username}"
    else
      redirect_to "/error" #sinon, l'utilisateur est redirigé vers une page erreur
    end
  end

  #Méthode Post du formulaire Form_for
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

  #Méthode Post du formulaire Form_Tag
  def create3
   @user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
   redirect_to "/users/#{User.last.username}"
 end

 #Méthode de test des username sur la DB
 def test
   if @user.new_record? == false
     redirect_to :action => “show”, :controller => “home”, :username => @user.username
   else
     redirect_to ‘/error’
   end
 end

 #Méthode affichage page profil nouvel utilisateur
  def show
    @username = params[:username]
    @id = User.find_by(username: @username).id
    @email = User.find_by(username: @username).email
    @bio = User.find_by(username: @username).bio
  end

  #Mathode Get page erreurs
  def error
  end

  #Création d'un utilisateur au début du Post du formulaire Form_for
  def form_for
    @user = User.new
  end

  #Post du Form_tag
  def form_tag

  end
end
