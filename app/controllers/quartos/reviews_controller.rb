class Quartos::ReviewsController < ApplicationController

    def create
        
       usuario_aux = (quarto.usuario_id).to_s
       review = quarto.reviews.find_or_initialize_by(usuario_id: usuario_aux)# parametro model
     
        review.update!(review_params)
        redirect_to avaliacoes_path
    end
    
    def index
        @reviews = Review.all
    end    

    def update
        create
    end

    def quarto
        @quarto ||= Quarto.find(params[:quarto_id]) #parametros de URL
    end

    def review_params
        params.require(:review).permit(:pontos)
    end    
end    