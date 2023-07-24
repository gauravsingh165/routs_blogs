class MyusersController < ApplicationController
    def index 
        @myusers = Myuser.all
    end
    def new
        @myusers = Myuser.new
      end
      def create
        @myusers = Myuser.new(myuser_params)
        if @myusers.save
          redirect_to @myusers
        else
          render :new
        end
      end
    
      private
    
      def myuser_params
        params.require(:myuser).permit(:name, :email) 
      end
end
