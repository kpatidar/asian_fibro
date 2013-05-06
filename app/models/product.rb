class Product < ActiveRecord::Base
  attr_accessible :available, :name, :pid, :price, :quality
  
  def self.available_products
    Product.where("available=?", true)
  end
end
