class LocationsController < ApplicationController
	def create
    @company = Company.find(params[:company_id])
    @location = @company.locations.create(location_params)
    redirect_to company_path(@company)
  end
 
  def destroy
    @company = Company.find(params[:company_id])
    @location = @company.locations.find(params[:id])
    @location.destroy
    redirect_to company_path(@company)
  end
 
  private
    def location_params
      params.require(:location).permit(:address, :address1, :city, :state, :zip, :phone)
    end
end
