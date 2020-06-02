class RequestsController < ApplicationController
  #t.integer "user_id", null: false
  #t.integer "merchant_id", null: false
  #t.string "product_name"
  #t.integer "quantity"
  before_action :authenticate_user!

  def new
    @request = current_user.requests.build
  end


  private

  def set_request
    @request = Request.find_by(id: params[:id])
  end

  def workout_params
    params.require(:workout).permit(:name, :description)
  end
end
