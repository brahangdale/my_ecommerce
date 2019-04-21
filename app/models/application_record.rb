class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  private

  def abc
  	"abc"
  end


  protected

  def xyz
  	"xyz"
	end
end
