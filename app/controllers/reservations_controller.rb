class ReservationsController < ApplicationController
    def show
        @reservation = Reservation.find(params[:id])
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.create(reservation_params)
        #redirect_to showreservations_path(params[:reservation][:user_id])
    end

    def edit      
        @reservation = Reservation.find(params[:id])    
    end

    def update        
        @reservation = Reservation.find(params[:id])        
        @reservation.update(reservation_params)  
        #redirect_to showreservations_path(params[:reservation][:user_id])    
    end 

    def destroy       
       @reservation = Reservation.find(params[:id])        
       @reservation.destroy    
       #redirect_back fallback_location: showreservations_path #(@reservation)    
    end

    private

    def reservation_params
    params.require(:reservation).permit(:restaurant_name, :party_size, :date, :time, :user_id, :restaurant_id)
    end
end
