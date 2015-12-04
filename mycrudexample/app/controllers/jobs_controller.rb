class JobsController < ApplicationController

	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def job_params
		params.require(:job).permit(:name, :description, :salary)
	end

end