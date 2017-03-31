class SellersController < ApplicationController
    before_action :find_food, only: [:show, :edit, :update, :destroy]

    def index
        @sellers = Seller.all.order("created_at DESC")
    end

    def show
        @seller = Seller.find(params[:id])
    end

    def new
        @seller = Seller.new
    end

    def create
        @seller = Seller.new(seller_params)

        if @seller.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @seller.update(seller_params)
            redirect_to seller_path(@seller)
        else
            render 'edit'
        end
    end

    def destroy
        @seller.destroy
        redirect_to root_path
    end

    ## Parts I added
    def main
        # @posts = Seller.all
        @search = params[:search]
        if @search
          @posts = Seller.search(@search).order("created_at DESC")
        # else
        #   @posts = Seller.all.order("created_at DESC")
        end
    end      

    def result
        @search = params[:search]
        if @search
          @posts = Seller.search(@search).order("created_at DESC")
        end
    end

    ##  

private
    def seller_params
        params.require(:seller).permit(:food, :location, :price, :date, :mobile, :details, :food_img)
    end

    def find_food
        @seller = Seller.find(params[:id])
    end

end
