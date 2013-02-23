class NightattacksController < ApplicationController
  # GET /nightattacks
  # GET /nightattacks.json
  def index
    @nightattacks = Nightattack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nightattacks }
    end
  end

  # GET /nightattacks/1
  # GET /nightattacks/1.json
  def show
    @nightattack = Nightattack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nightattack }
    end
  end

  # GET /nightattacks/new
  # GET /nightattacks/new.json
  def new
    @nightattack = Nightattack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nightattack }
    end
  end

  # GET /nightattacks/1/edit
  def edit
    @nightattack = Nightattack.find(params[:id])
  end

  # POST /nightattacks
  # POST /nightattacks.json
  def create
    @nightattack = Nightattack.new(params[:nightattack])

    respond_to do |format|
      if @nightattack.save
        format.html { redirect_to @nightattack, notice: 'Nightattack was successfully created.' }
        format.json { render json: @nightattack, status: :created, location: @nightattack }
      else
        format.html { render action: "new" }
        format.json { render json: @nightattack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nightattacks/1
  # PUT /nightattacks/1.json
  def update
    @nightattack = Nightattack.find(params[:id])

    respond_to do |format|
      if @nightattack.update_attributes(params[:nightattack])
        format.html { redirect_to @nightattack, notice: 'Nightattack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nightattack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nightattacks/1
  # DELETE /nightattacks/1.json
  def destroy
    @nightattack = Nightattack.find(params[:id])
    @nightattack.destroy

    respond_to do |format|
      format.html { redirect_to nightattacks_url }
      format.json { head :no_content }
    end
  end
end
