class RequestsController < ApplicationController
  #t.integer "user_id", null: false
  #t.integer "merchant_id", null: false
  #t.string "product_name"
  #t.integer "quantity"
  before_action :authenticate_user!

  def index
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
    byebug
    if @request.save
      redirect_to request_path(@request)
    else
      @products = Product.all
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @request.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_request
    @request = Request.find_by(id: params[:id])
  end

  def request_params
    params.require(:request).permit(:product_id, :quantity)#, custom_request_attributes: [:id, :request_id, :description])
  end

  def set_product
    @product = Product.find(@request.product_id)
  end

  def assign_merchant
    @request.merchant_id = @product.merchant.id
  end

end
