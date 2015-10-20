class RecordsController < ApplicationController
	def index
    	@record = Record.all
  	end

	def new
		@record = Record.new
	end

	def create
		@record = Record.new(record_params)
 
  		if @record.save
    		redirect_to @record
  		else
    		render 'new'
  		end
 	end

 	def show
    	@record = Record.find(params[:id])
    end

 	private
  	def record_params
    	params.require(:record).permit(:date, :ph, :ammonia, :nitrite, :nitrate, :kh, :gh, :notes)
 	 end
end
