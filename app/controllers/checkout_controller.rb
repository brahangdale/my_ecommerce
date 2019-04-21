class CheckoutController < ApplicationController
	def address
		@order = current_order
		@order.state = "address"
		@order.save
	end

	def shipping
	end

	def payment
	end

	def confirm
	end

	def state
		@states = CS.states(params[:country])
	end
end