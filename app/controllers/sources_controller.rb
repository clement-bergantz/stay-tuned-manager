class SourcesController < ApplicationController
	def index
		@sources = Source.all
	end

	def show
		@source = Source.find(params[:id])
	end

	def new
		@source = Source.new
	end

	def create
		@source = Source.new(source_params)
		if @source.save
			redirect_to sources_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def delete
	end

	private

	def source_params
		params.require(:source).permit(:name, :url, :type_id)
	end
end
