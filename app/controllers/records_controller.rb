class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  def index
    	@record = Record.all
  	end

	def new
		@record = Record.new
	end

	def create
		@record = Record.new(record_params)
 
  		if @record.save
    		redirect_to records_path
  		else
    		render 'new'
  		end
 	end

 	def show
    end

  def edit
  end

  def update
    if @record.update(record_params)
      redirect_to records_path
    else
      render 'edit'
    end
  end

  def destroy
    @record.destroy
 
    redirect_to records_path
  end

 	private
  	def set_record
      @record = Record.find(params[:id])
    end

    def record_params
    	params.require(:record).permit(:date, :ph, :ammonia, :nitrite, :nitrate, :kh, :gh, :notes)
 	 end
end
