class PeopleController < ApplicationController

	def index
		@people = Person.all
	end

	def show
		@person = Person.find(params[:id])
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

	private

		def person_params
			params.require(:person).permit(:name, :cpf, :birthday, :gender)
		end

		def set_person
			@person = Person.find(params[:id])
		end

end