class SalesController < ApplicationController
	
	before_filter :authenticate_user!, :except => [:show, :index]

	def new
		@sale = Sale.new
	end

	def create
		@sale = Sale.new(params[:sale].permit(:title, :amount, :contact, :description, :email, :price, :user_id, :user_name))
		

		if @sale.save
    		redirect_to @sale
  		else
    		render 'new'
  		end
	end

	def compra
		@sale = Sale.find(params[:id])
		@sale.debit(1)
		@sale.save
		SellerMailer.sold_email(@sale, current_user.email, current_user.name).deliver
  		redirect_to	@sale			
	end

	def index
  		@sales = Sale.all
	end

	def show
  		@sale = Sale.find(params[:id])
	end

	def edit
  		@sale = Sale.find(params[:id])
	end

	def update
  		@sale = Sale.find(params[:id])
 
  		if @sale.update_attributes(params[:sale].permit(:title, :amount, :contact, :description, :email, :price, :user_id, :user_name))
    		redirect_to @sale
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@sale = Sale.find(params[:id])
  		@sale.destroy
 
  		redirect_to sales_path
	end

	private
  		def sale_params
    		params.require(:sale).permit(:title, :amount, :contact, :description, :email, :price, :user_id, :user_name)
  		end
end
