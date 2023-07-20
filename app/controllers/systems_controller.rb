class SystemsController < ApplicationController
  def index
    @systems = System.all
  end

  def new
    @system = System.new
  end
  

  def create
    @system = System.new(system_params)
    @system.fav_system = params[:fav_system]
    if @system.save
      redirect_to @system, notice: 'System was successfully created.'
    else
      render :new
    end
  end
 
  def show 
    @system =System.find(params[:id])
 
   end 
   def edit
    @system =System.find(params[:id])
 
   end
   def update
    @system = System.find(params[:id])
    if @system.update(system_params)
      redirect_to system_path(@system)
    else
      render :edit
    end
  end
   def destroy



   end
  # ...

  private

  def system_params
    params.require(:system).permit(:s_name, :s_year)
  end
end
