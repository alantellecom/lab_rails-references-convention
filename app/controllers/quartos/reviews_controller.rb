class Quartos::ReviewsController < ApplicationController
    
    def new # sem utilizar params do quarto pela rota
        @usuarios=Usuario.all
        @quartos =Quarto.all
        @avaliacao =Review.new
    end

    def create
       usuario_aux = (quarto.usuario_id).to_s #utilizando params do quarto pela rota
       review = @quarto.reviews.find_or_initialize_by(usuario_id: usuario_aux)# parametro model
       review.update!(review_params)
       
        #@review=Review.new(review_params) # sem utilizar params do quarto pela rota
        #@review.save
        redirect_to avaliacoes_path
    end
    
    def show # sem utilizar params do quarto pela rota
        usuario_aux = (quarto.usuario_id).to_s
       @review = @quarto.reviews.find_or_initialize_by(usuario_id: usuario_aux)
    end
    
    def index
        @reviews = Review.all
    end    

    def update
        create #utilizando params do quarto pela rota
        #@avaliacao = Review.find(params[:id]) # sem utilizar params do quarto pela rota
        #@avaliacao.update(review_params)
    end
    
    def edit # sem utilizar params do quarto pela rota
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