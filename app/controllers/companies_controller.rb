class CompaniesController < ApplicationController
  def show
    set_company
  end

  private

  def set_company
    @company = Company.find_by(id: params[:id])
  end
end
