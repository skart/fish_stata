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

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
 
    if @record.update(record_params)
      redirect_to @record
    else
      render 'edit'
    end
  end

  def destroy
    @record = Records.find(params[:id])
    @record.destroy
 
    redirect_to articles_path
  end

 	private
  	def record_params
    	params.require(:record).permit(:date, :ph, :ammonia, :nitrite, :nitrate, :kh, :gh, :notes)
 	 end
end
