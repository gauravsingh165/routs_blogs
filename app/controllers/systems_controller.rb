class SystemsController < ApplicationController
  before_action :set_system, only: %i[show edit update destroy]
  def index
    @systems = System.all
  end
  def new
    @system = System.new
  end
  def create
    @system.fav_system = params[:fav_system]
    if @system.save
      redirect_to @system, notice: 'System was successfully created.'
    else
      render :new
    end
  end
  def show 
  end 
  def edit
  end
  def update
    @system.fav_system = params[:fav_system]
    if @system.update(system_params)
      redirect_to system_path(@system)
    else
      render :edit
    end
  end
  def destroy
    @system.destroy
    redirect_to systems_path
  end
  private
  def system_params
    params.require(:system).permit(:s_name, :s_year)
  end

  def set_system
    @system = System.find(params[:id])
  end
end
