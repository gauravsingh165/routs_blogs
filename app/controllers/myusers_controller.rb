class MyusersController < ApplicationController
    def index 
        @myusers = Myuser.all
    end
    def new 
   
    end 

    def create   
    #   debugger
    Myuser.create(name:params[:name], email:params[:email])
      redirect_to "/myuser"
    end 
end
