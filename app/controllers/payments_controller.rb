class PaymentsController < ApplicationController
    def index 
        @user = current_user 
        @payments = Payment.all 
    end 

    def show 
        @user = current_user 
        @payment = @user.payments.find_by(params[:id]) 
    end 

    def new 
        @payment = Payment.new 
        @users = [] 
        @users << current_user 
    end 

    def create 
        @payment = Payment.create(payment_params) 
        redirect_to payment_path(@payment) 
    end 

    def edit 
        @payment = Payment.find_by(params[:id]) 
        @users = [] 
        @users << current_user 
    end 

    def update 
        @payment = Payment.find_by(params[:id]) 
        @payment.update(payment_params) 
        redirect_to payment_path(@payment) 
    end 

    def destroy 
        @payment = Payment.find(params[:id]) 
        @payment.destroy 
        redirect_to payments_url 
    end 

    private 

    def payment_params 
        params.require(:payment).permit(:user_id, :payment_type, :token, :expiry_date, :cvv) 
    end 
end
