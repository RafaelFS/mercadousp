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

	def compra
		@sale = Sale.find(params[:id])
		@sale.debit(1)
		@sale.save
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
 
  		if @sale.update_attributes(params[:sale].permit(:title, :amount, :contact, :description, :email, :price, :user))
    		redirect_to @sale
  		else
    		render 'edit'
  		end
	end

	private
  		def sale_params
    		params.require(:sale).permit(:title, :amount, :contact, :description, :email, :price, :user)
  		end
end
