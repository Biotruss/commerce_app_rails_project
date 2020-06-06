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
        if @request
          redirect_to request_custom_request_path(@request, @custom_request)
        else
          redirect_to @custom_request
        end
      else
        render :new
      end
    end


  def show
    if params[:request_id]
      set_custom_request
      set_request
    end
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
