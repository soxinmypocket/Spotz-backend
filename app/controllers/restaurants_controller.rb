class RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[0][:id])
    end

    # def new 
    #     @restaurant = Restaurant.new
    #   end
    
    # def create
    #     restaurant = Restaurant.create(restaurant_params)
    # end

    # private

    # def restaurant_params
    #     params.require(:restaurant).permit(:name, :neighborhood, :borough, :address, :service, :phone, :website)
    # end

end