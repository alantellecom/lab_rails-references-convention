class Quartos::ReviewsController < ApplicationController

    def create
        review = quarto.review.find_or_initialize_by(params [:usuario_id])

        review.update!(review_params)

        head :ok
    end

    def update
        create
    end

    def quarto
        @quarto ||= Quarto.find(params[:quarto_id])
    end

    def review_params
        params.require(:review).permit(:points,:usuario_id, :quarto_id)
    end    
end    