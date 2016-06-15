class PagesController < ApplicationController



  def batman
  	render layout: "bat"
  end

  def superman
  	render layout: "sup"
  end

  def batman_vs_superman
  	render layout: "bs"
  	@voto = Voto.all
  end


  def create
  	
  	heroe = params[:heroe]
  	email = params[:email]
  	
  	Voto.create(heroe: heroe, email: email)

  	redirect_to root_url
  end
end



  #  def pag1
  # 	render layout: "landing"
  # end


# def index
#   	@user = User.all

#   end

#   def create
#   	name = params[:name]
#   	email = params[:email]
#   	age = params[:age]

#   	User.create(name: name, email: email, age: age)

#   	redirect_to root_url
#   end




