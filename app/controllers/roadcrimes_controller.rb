class RoadcrimesController < ApplicationController
  # GET /roadcrimes
  # GET /roadcrimes.json
layout 'conflict'
  def index
    @roadcrimes = Roadcrime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roadcrimes }
    end
  end

  # GET /roadcrimes/1
  # GET /roadcrimes/1.json
  def show
    @roadcrime = Roadcrime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roadcrime }
    end
  end

  # GET /roadcrimes/new
  # GET /roadcrimes/new.json
  def new
    @roadcrime = Roadcrime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roadcrime }
    end
  end

  # GET /roadcrimes/1/edit
  def edit
    @roadcrime = Roadcrime.find(params[:id])
  end

  # POST /roadcrimes
  # POST /roadcrimes.json
  def create
    @roadcrime = Roadcrime.new(params[:roadcrime])

    respond_to do |format|
      if @roadcrime.save
        format.html { redirect_to @roadcrime, notice: 'Roadcrime was successfully created.' }
        format.json { render json: @roadcrime, status: :created, location: @roadcrime }
      else
        format.html { render action: "new" }
        format.json { render json: @roadcrime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roadcrimes/1
  # PUT /roadcrimes/1.json
  def update
    @roadcrime = Roadcrime.find(params[:id])

    respond_to do |format|
      if @roadcrime.update_attributes(params[:roadcrime])
        format.html { redirect_to @roadcrime, notice: 'Roadcrime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roadcrime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roadcrimes/1
  # DELETE /roadcrimes/1.json
  def destroy
    @roadcrime = Roadcrime.find(params[:id])
    @roadcrime.destroy

    respond_to do |format|
      format.html { redirect_to roadcrimes_url }
      format.json { head :no_content }
    end
  end
end
