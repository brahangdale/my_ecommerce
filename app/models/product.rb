class Product < ApplicationRecord
	has_many :photos
	accepts_nested_attributes_for :photos

	has_many :items

	

	def test
		self.xyz
	end

	protected

	def test1
		"protected"
	end
end
