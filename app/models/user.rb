class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]
  has_many :orders
  
  def name
  	username = ''
  	if self.first_name.present?
  		username = self.first_name
  	else
  		username = self.email.split('@')[0]
  	end
  	username
  end
end
