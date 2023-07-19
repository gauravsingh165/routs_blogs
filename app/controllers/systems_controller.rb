class SystemsController < ApplicationController
  def index
    @systems = System.all
  end

  def new
    @system = System.new
  end
  

  def create
    @system = System.new(system_params)

    if @system.save
      redirect_to @system, notice: 'System was successfully created.'
    else
      render :new
    end
  end
  def show 
    @system =System.find(params[:id])
 
   end 
  # ...

  private

  def system_params
    params.require(:system).permit(:s_name, :s_year)
  end
end
