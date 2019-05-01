class Quartos::ReviewsController < ApplicationController
    
    def new # sem utilizar params do quarto pela rota
        @usuarios=Usuario.all
        @quartos =Quarto.all
        @avaliacao =Review.new
    end

    def create
        @quarto ||= Quarto.find(params[:quarto_id]) #parametros da URL. Não existe usuario_id na url, apenas no form
        #params do formulario.
        @review=Review.new(review_params) #apenas parametros do form.
        @review.quarto= @quarto #necessario incluir quarto pela URL
        @review.save
        #redirect_to avaliacoes_path
        redirect_to quarto_review_path(@quarto, @review)
    end
    
    def show # sem utilizar params do quarto pela rota
            @quarto_review = Review.where(quarto_id: params[:quarto_id]) #retorna ultimo elemento pois a hash do path invocado em create possui quarto_id
            @usuario_review = Review.find_by(usuario_id: params[:usuario_id]) #retorna nulo pois na hash não consta usuario_id
    end
    
    def index
        @reviews = Review.all
    end    

    def update
        #create #utilizando params do quarto pela rota
        #@avaliacao = Review.find(params[:id]) # sem utilizar params do quarto pela rota
        #@avaliacao.update(review_params)
    end
    
    def edit # sem utilizar params do quarto pela rota
        @usuarios=Usuario.all
        @quartos =Quarto.all
        @avaliacao = Review.find(params[:id])
    end

    def review_params #parametros do formulario
        params.require(:review).permit(:pontos, :usuario_id)
    end    
end    