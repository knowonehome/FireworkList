class FireworksController < ApplicationController
  before_action :set_firework, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fireworks = Firework.all
    respond_with(@fireworks)
  end

  def show
    respond_with(@firework)
  end

  def new
    @firework = Firework.new
    respond_with(@firework)
  end

  def edit
  end

  def create
    @firework = Firework.new(firework_params)
    @firework.save
    respond_with(@firework)
  end

  def update
    @firework.update(firework_params)
    respond_with(@firework)
  end

  def destroy
    @firework.destroy
    respond_with(@firework)
  end

  private
    def set_firework
      @firework = Firework.find(params[:id])
    end

    def firework_params
      params.require(:firework).permit(:firework_name, :style, :description)
    end
end
