class ReservationsController < ApplicationController
    def show
        @reservation = Reservation.find(params[:id])
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.create(reservation_params)
    end

    def edit      
        @reservation = Reservation.find(params[:id])    
    end

    def update        
        @reservation = Reservation.find(params[:id])        
        @reservation.update(reservation_params)    
    end 

    def destroy       
       @reservation = Reservation.find(params[:id])        
       @reservation.destroy       
    end

    private

    def reservation_params
    params.require(:reservation).permit(:restaurant_name, :party_size, :date, :time, :user_id, :restaurant_id)
    end
end
