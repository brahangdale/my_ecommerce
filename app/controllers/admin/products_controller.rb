class Admin::ProductsController < ApplicationController
	layout 'admin'
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
		@product.photos.build
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to admin_products_path
		end
	end

	def edit
	end

	private

	def product_params
		params.require(:product).permit(:name, :price, :category_id, :brand_id, photos_attributes: [:image, :product_id])
	end
end