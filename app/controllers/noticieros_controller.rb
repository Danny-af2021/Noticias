class NoticierosController < ApplicationController

  
  before_action :set_noticiero, only: %i[ show update destroy ]
 
  # GET /noticieros
  def index
    @noticieros = Noticiero.all

    #render json: @noticieros
  end

  # GET /noticieros/1
  def show

    @noticiero = Noticiero.find(params[:id])
    #render json: @noticiero.to_json(only: [:id, :title, :image, :content, :category])
  end

  def new
    @noticiero = Noticiero.new
  end

  # POST /noticieros
  def create
    @noticiero = Noticiero.new(noticiero_params)
    
    if @noticiero.save
      redirect_to noticieros_path, notice: 'La noticia nueva se creo correctamente' 
    #  render json: @noticiero, status: :created, location: @noticiero
    else
      render :new, status: :unprocessable_entity
      #render json: @noticiero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /noticieros/1
  def update
    if @noticiero.update(noticiero_params)
      render json: @noticiero
    else
      render json: @noticiero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /noticieros/1
  def destroy
    @noticiero.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noticiero
      @noticiero = Noticiero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def noticiero_params
      params.require(:noticiero).permit(:title, :image, :content, :category)
    end
end
