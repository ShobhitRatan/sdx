class AddressesController < ApplicationController
    def index 
        @user = current_user 
        @addresses = @user.addresses 
    end 

    def show 
        @user = current_user 
        @address = @user.addresses.find_by(params[:id]) 
    end 

    def new 
        @address = Address.new 
        @users = [] 
        @users << current_user 
    end 

    def create 
        @address = Address.create(address_params) 
        redirect_to address_path(@address) 
    end 

    def edit 
        @address = Address.find_by(params[:id]) 
        @users = [] 
        @users << current_user 
    end 

    def update 
        @address = Address.find_by(params[:id]) 
        @address.update(address_params) 
        redirect_to address_path(@address)  
    end 

    def destroy 
        @address = Address.find_by(params[:id]) 
        @address.destroy 
        redirect_to addresses_url 
    end 

    private 

    def address_params 
        params.require(:address).permit(:user_id, :address_type, :address_line_1, :address_line_2, :city, :state, :zipcode, :country) 
    end 
end
