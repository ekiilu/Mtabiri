class FirearmsController < ApplicationController
  # GET /firearms
  # GET /firearms.json
layout 'conflict'

  def index
    @firearms = Firearm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @firearms }
    end
  end

  # GET /firearms/1
  # GET /firearms/1.json
  def show
    @firearm = Firearm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @firearm }
    end
  end

  # GET /firearms/new
  # GET /firearms/new.json
  def new
    @firearm = Firearm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @firearm }
    end
  end

  # GET /firearms/1/edit
  def edit
    @firearm = Firearm.find(params[:id])
  end

  # POST /firearms
  # POST /firearms.json
  def create
    @firearm = Firearm.new(params[:firearm])

    respond_to do |format|
      if @firearm.save
        format.html { redirect_to @firearm, notice: 'Firearm was successfully created.' }
        format.json { render json: @firearm, status: :created, location: @firearm }
      else
        format.html { render action: "new" }
        format.json { render json: @firearm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /firearms/1
  # PUT /firearms/1.json
  def update
    @firearm = Firearm.find(params[:id])

    respond_to do |format|
      if @firearm.update_attributes(params[:firearm])
        format.html { redirect_to @firearm, notice: 'Firearm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @firearm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firearms/1
  # DELETE /firearms/1.json
  def destroy
    @firearm = Firearm.find(params[:id])
    @firearm.destroy

    respond_to do |format|
      format.html { redirect_to firearms_url }
      format.json { head :no_content }
    end
  end
end
