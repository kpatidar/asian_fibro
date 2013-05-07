class ProductController < ApplicationController
  def index
    @products = Product.available_products
  end

  def show
    @product = Product.find(params[:id])
  end
end
