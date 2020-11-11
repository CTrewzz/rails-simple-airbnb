class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query]
      @flats = Flat.where("name LIKE '%#{params[:query]}%'")
    else
      @flats = Flat.all
    end
  end
  # @flats = Flat.where("name LIKE '%garden%'"

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: 'Flat has been added'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat has been updated'
    else
      render :new
    end
  end

  def destroy
    @flat.destroy

    redirect_to flats_path, notice: 'Flat has been removed'
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
