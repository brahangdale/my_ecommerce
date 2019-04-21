class ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_only!

	layout 'admin'
	
	def index
		@products = Product.all
	end
end