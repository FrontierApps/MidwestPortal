class CompaniesController < ApplicationController
	def new
    	@company = Company.new
    end
    def edit
    	@company = Company.find(params[:id])
    end
    def index
		@companies = Company.all
    end
    def show
    	@company = Company.find(params[:id])
    end
    
    def create
    	@company = Company.new(company_params)
    	if @company.save
    		redirect_to @company
    	else
    		render 'new'
    	end
    end

    def update
    	@company = Company.new(company_params)

    	if @company.save
    		redirect_to @company 
    	else 
    		render 'new'
    	end
    end

    def destroy
    	@company = Company.find(params[:id])
    	@company.destroy

    	redirect_to companies_path
    end
    
    private
    def company_params
    	params.require(:company).permit(:company)
    end
end
