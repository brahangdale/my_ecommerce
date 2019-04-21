class Order < ApplicationRecord
	belongs_to :user
	has_many :items

	enum state: [:cart, :address, :shipping, :payment, :complete]
end
