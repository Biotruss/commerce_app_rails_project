class CustomRequestsController < ApplicationController
  before_action :authenticate_user!

    def new
      if params[:request_id]
        set_request
        @custom_request = @request.custom_requests.build
      else
        @custom_request = CustomRequest.new
      end
    end

    def create
      if params[:request_id]
        set_request
        @custom_request = @request.custom_requests.build(custom_request_params)
      else
        @custom_request = CustomRequest.new(custom_request_params)
      end
      if @custom_request.save
        redirect_to request_custom_request_path(@request, @custom_request)
      else
        redirect_to new_request_custom_request_path(@request, @custom_request)
      end
    end


  def show
    if params[:request_id]
      set_custom_request
      set_request
    end
  end

  def edit
    set_request
    set_custom_request
    if !@custom_request
      redirect_to request_custom_request_path(@request, @custom_request)
    else
      @products = Product.all
    end
  end

  def update
    set_custom_request
    set_request
    @custom_request.update(custom_request_params)
    redirect_to request_custom_request_path(@request, @custom_request)
  end

  def destroy
    set_request
    set_custom_request
    @custom_request.destroy
    redirect_to request_path(@request)
  end

  private

  def set_request
    @request = Request.find_by_id(params[:request_id])
  end

  def set_custom_request
    @custom_request = CustomRequest.find_by(id: params[:id])
  end

  def custom_request_params
    params.require(:custom_request).permit(:description, :request_id)
  end

end
