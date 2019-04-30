class Quartos::ReviewsController < ApplicationController
    
    def new
        @usuarios=Usuario.all
        @quartos =Quarto.all
        @avaliacao =Review.new
    end

    def create
        
       #usuario_aux = (quarto.usuario_id).to_s
       #review = @quarto.reviews.find_or_initialize_by(usuario_id: usuario_aux)# parametro model
        
        @review=Review.new(review_params)
        @review.save
        redirect_to avaliacoes_path
    end
    
    def index
        
        @reviews = Review.all
    end    

    def update
        @avaliacao = Review.find(params[:id])
        @avaliacao.update(review_params)
    end
    
    def edit
        @usuarios=Usuario.all
        @quartos =Quarto.all
        @avaliacao = Review.find(params[:id])
        
    end

    def quarto
        @quarto ||= Quarto.find(params[:quarto_id]) #parametros de URL
    end

    def review_params
        params.require(:review).permit(:pontos, :usuario_id, :quarto_id)
    end    
end    