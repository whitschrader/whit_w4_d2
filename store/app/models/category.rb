class Category < ActiveRecord::Base
	has_many :connections
	has_many :products, through: :connections
end
