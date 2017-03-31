class ReviewsController < ApplicationController
    before_action :find_food

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.seller_id = @seller.id
        @review.user_id = current_user.id
        if @review.save
            redirect_to seller_path(@seller)
        else
            render 'new'
        end
    end

private
    def review_params
        params.require(:review).permit(:rating)
    end

    def find_food
        @seller = Seller.find(params[:seller_id])
    end

end
