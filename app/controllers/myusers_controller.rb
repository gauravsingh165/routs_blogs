class MyusersController < ApplicationController
    def index 
      @myusers = Myuser.all
    end
    def new 
   
    end 
    def view
      @myusers= Myuser.find(params[:id])
      
  end
    def create   
    #   debugger
    Myuser.create(name:params[:name], email:params[:email])

    redirect_to "/myusers"
    end 

    def edit  
      @myusers = Myuser.find(params[:id])
  end 

  def update 
      #debugger
      @myusers = Myuser.find(params[:id])
      @myusers.update(name:params[:name], email:params[:email], address:params[:address])

      redirect_to "/myusers"
  end

  def destroy 
      @myusers= Myuser.find(params[:id])
      @myusers.destroy
      
      redirect_to "/myusers"
  end
end
