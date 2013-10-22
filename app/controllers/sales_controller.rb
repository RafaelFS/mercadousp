class SalesController < ApplicationController
	def new
		@sale = Sale.new
	end

	def create
		@sale = Sale.new(params[:sale].permit(:title, :amount, :contact, :description, :email, :price, :user))

		if @sale.save
    		redirect_to @sale
  		else
    		render 'new'
  		end
	end

	def index
  		@sales = Sale.all
	end

	private
  		def sale_params
    		params.require(:sale).permit(:title, :amount, :contact, :description, :email, :price, :user)
  		end
end
