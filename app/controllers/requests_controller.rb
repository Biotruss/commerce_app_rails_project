class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests = current_user.requests
  end

  def new
    @products = Product.all
    @request = current_user.requests.build
    3.times { @request.custom_requests.build }
  end

  def create
    @request = current_user.requests.build(request_params)
    set_product
    assign_merchant
    if @request.save
      redirect_to request_path(@request)
    else
      @products = Product.all
      render :new
    end
  end

  def show
    #set_request
    set_product
    set_merchant
  end

  def edit
    #set_request
    if !@request
      redirect_to requests_path
    else
      @products = Product.all
    end
  end

  def update
    #set_request
    set_product
    assign_merchant
    @request.update(request_params)
    redirect_to @request
  end

  def destroy
    #set_request
    @request.destroy
    redirect_to requests_path(current_user)
  end

  private

  def set_request
    @request = Request.find_by(id: params[:id])
  end

  def request_params
    params.require(:request).permit(:product_id, :quantity, custom_requests_attributes: [:id, :request_id, :description])
  end

  def set_product
    @product = Product.find(@request.product_id)
  end

  def set_merchant
    @merchant = Merchant.find(@request.merchant_id)
  end

  def assign_merchant
    @request.merchant_id = @product.merchant.id
  end
end
