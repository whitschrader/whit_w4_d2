class Product < ActiveRecord::Base
	has_many :connections
	has_many :categories, through: :connections
end
