class QuartosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :avaliar, :create, :edit, :update, :destroy]
  before_action :set_quarto, only: [:show, :edit, :update, :destroy]
  delegate :current_page, :num_pages, :limit_value, :total_pages, to: :@quartos
  PER_PAGE = 2

  # GET /quartos
  # GET /quartos.json
  def index

    @quartos = Quarto.page(params[:page]).per(PER_PAGE)
    #binding.pry
  end

  # GET /quartos/1
  # GET /quartos/1.json
  def show # utilizando params quarto pela rota aninhada
    @quarto = Quarto.find(params[:id])
    @reviews = @quarto.reviews
    @media_estrelas = @reviews.estrelas

  end

  # GET /quartos/new
  def new
    @quarto = Quarto.new
    @usuarios=User.all
  end
  
  def avaliar # utilizando params quarto pela rota aninhada
    @quarto = Quarto.find(params[:id])
    @review = Review.new
    @usuarios=User.all  

  end  

  # GET /quartos/1/edit
  def edit
    @usuarios=User.all
    
  end

  # POST /quartos
  # POST /quartos.json
  def create
    #binding.pry
    @quarto = Quarto.new(quarto_params)

    respond_to do |format|
      if @quarto.save
        format.html { redirect_to @quarto, notice: 'Quarto was successfully created.' }
        format.json { render :show, status: :created, location: @quarto }
      else
        format.html { render :new }
        format.json { render json: @quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quartos/1
  # PATCH/PUT /quartos/1.json
  def update
    respond_to do |format|
      if @quarto.update(quarto_params)
        format.html { redirect_to @quarto, notice: 'Quarto was successfully updated.' }
        format.json { render :show, status: :ok, location: @quarto }
      else
        format.html { render :edit }
        format.json { render json: @quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quartos/1
  # DELETE /quartos/1.json
  def destroy
    @quarto.destroy
    respond_to do |format|
      format.html { redirect_to quartos_url, notice: 'Quarto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quarto
      @quarto = Quarto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quarto_params
      params.require(:quarto).permit(:numero, :user_id, :foto)
    end
end
