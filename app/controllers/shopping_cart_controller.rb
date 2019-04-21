class ShoppingCartController < ApplicationController
	before_action :load_order

	def add_to_cart
		product = Product.find(params[:product_id])

		item = @order.items.build(product_id: product.id)
		item.save

		total = 0
		
		@order.items.each do |item|
			total = total + item.product.price.to_f
		end

		@order.total = total
		@order.save

		redirect_to '/cart'
	end

	def cart
	end

	private

	def load_order
		@order = current_user.orders.where(state: 'cart').last

		if @order.blank?
			@order = current_user.orders.build(state: 'cart')
			@order.save
		end

		session[:order_id] = @order.id
	end
end