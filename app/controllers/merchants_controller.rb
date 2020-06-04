class MerchantsController < ApplicationController
  def show
    set_merchant
    @company = @merchant.company
  end

  private

  def set_merchant
    @merchant = Merchant.find_by(id: params[:id])
  end

end
