class CattletheftsController < ApplicationController
  # GET /cattlethefts
  # GET /cattlethefts.json

 layout 'conflict'
  def index
    @cattlethefts = Cattletheft.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cattlethefts }
    end
  end

  # GET /cattlethefts/1
  # GET /cattlethefts/1.json
  def show
    @cattletheft = Cattletheft.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cattletheft }
    end
  end

  # GET /cattlethefts/new
  # GET /cattlethefts/new.json
  def new
    @cattletheft = Cattletheft.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cattletheft }
    end
  end

  # GET /cattlethefts/1/edit
  def edit
    @cattletheft = Cattletheft.find(params[:id])
  end

  # POST /cattlethefts
  # POST /cattlethefts.json
  def create
    @cattletheft = Cattletheft.new(params[:cattletheft])

    respond_to do |format|
      if @cattletheft.save
        format.html { redirect_to @cattletheft, notice: 'Cattletheft was successfully created.' }
        format.json { render json: @cattletheft, status: :created, location: @cattletheft }
      else
        format.html { render action: "new" }
        format.json { render json: @cattletheft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cattlethefts/1
  # PUT /cattlethefts/1.json
  def update
    @cattletheft = Cattletheft.find(params[:id])

    respond_to do |format|
      if @cattletheft.update_attributes(params[:cattletheft])
        format.html { redirect_to @cattletheft, notice: 'Cattletheft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cattletheft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cattlethefts/1
  # DELETE /cattlethefts/1.json
  def destroy
    @cattletheft = Cattletheft.find(params[:id])
    @cattletheft.destroy

    respond_to do |format|
      format.html { redirect_to cattlethefts_url }
      format.json { head :no_content }
    end
  end
end
