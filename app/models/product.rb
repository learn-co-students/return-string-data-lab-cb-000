class Product < ActiveRecord::Base
    has_many :ordered_products 
    has_many :orders, :through => :ordered_products 
end
  


# RSpec.describe Product, type: :model do
#     it { should respond_to :description }
#     it { should respond_to :inventory }
#   end