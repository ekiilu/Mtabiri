class AdminController < ApplicationController
  def index
	@locations = Location.find(:all)
	@drop_down_array = Array.new

	if(defined? params[:location][:id])
		@test = params[:location][:id]
		@year =  params[:date][:year]
		if @test.empty?
			@location_id = 1
			@location_object = Location.find(@location_id)
			@location_name = @location_object.name
		else
			@location_id = @test.to_i
			@location_object = Location.find(@location_id)
			@location_name = @location_object.name
		end 
	else
		#Basically this sets the default location 
		@location_id = 1
		@location_object = Location.find(@location_id)
		@location_name = @location_object.name

	end 

    @hivlocationreports = Hivlocationreport.new
    @hivlocationreports.drawLocationGraph(@location_name,@location_id,@year)

  end
end
