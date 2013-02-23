class LocationreportsController < ApplicationController
  # GET /locationreports
  # GET /locationreports.json

layout 'locations'
  def index
   	@malarialocationreports = Malarialocationreport.new
	@stuff = Malarialocationreport.new
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

	
  	
	

	@malarialocationreports.drawLocationGraph(@location_name,@location_id,@year)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locationreports }
    end
  end

  # GET /locationreports/1
  # GET /locationreports/1.json
  def show
    @locationreport = Locationreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @locationreport }
    end
  end

  # GET /locationreports/new
  # GET /locationreports/new.json
  def new
    @locationreport = Locationreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @locationreport }
    end
  end

  # GET /locationreports/1/edit
  def edit
    @locationreport = Locationreport.find(params[:id])
  end

  # POST /locationreports
  # POST /locationreports.json
  def create
    @locationreport = Locationreport.new(params[:locationreport])

    respond_to do |format|
      if @locationreport.save
        format.html { redirect_to @locationreport, notice: 'Locationreport was successfully created.' }
        format.json { render json: @locationreport, status: :created, location: @locationreport }
      else
        format.html { render action: "new" }
        format.json { render json: @locationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locationreports/1
  # PUT /locationreports/1.json
  def update
    @locationreport = Locationreport.find(params[:id])

    respond_to do |format|
      if @locationreport.update_attributes(params[:locationreport])
        format.html { redirect_to @locationreport, notice: 'Locationreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @locationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locationreports/1
  # DELETE /locationreports/1.json
  def destroy
    @locationreport = Locationreport.find(params[:id])
    @locationreport.destroy

    respond_to do |format|
      format.html { redirect_to locationreports_url }
      format.json { head :no_content }
    end
  end
end
