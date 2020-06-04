class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    set_product
    @merchant = @product.merchant
  end

  private

  def set_product
    @product = Product.find_by(id: params[:id])
  end
end
