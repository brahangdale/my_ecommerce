class AdminController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_only!

	layout 'admin'
	
	def index
	end
end