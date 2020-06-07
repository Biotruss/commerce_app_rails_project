class ProductsController < ApplicationController
  def index
    @merchants = Merchant.all
    if !params[:merchant_id].blank?
      @products = Product.where(merchant_id: params[:merchant_id])
    else
      @products = Product.all
    end
  end

  def show
    set_product
    @merchant = @product.merchant
  end

  private
  def set_merchant
    @merchant = Merchant.find_by_id(params[:merchant_id])
  end

  def set_product
    @product = Product.find_by(id: params[:id])
  end
end
