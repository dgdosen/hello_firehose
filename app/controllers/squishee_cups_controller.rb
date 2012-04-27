class SquisheeCupsController < ApplicationController
  # GET /squishee_cups
  # GET /squishee_cups.json
  def index
    @squishee_cups = SquisheeCup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @squishee_cups }
    end
  end

  # GET /squishee_cups/1
  # GET /squishee_cups/1.json
  def show
    @squishee_cup = SquisheeCup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @squishee_cup }
    end
  end

  # GET /squishee_cups/new
  # GET /squishee_cups/new.json
  def new
    @squishee_cup = SquisheeCup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @squishee_cup }
    end
  end

  # GET /squishee_cups/1/edit
  def edit
    @squishee_cup = SquisheeCup.find(params[:id])
  end

  # POST /squishee_cups
  # POST /squishee_cups.json
  def create
    @squishee_cup = SquisheeCup.new(params[:squishee_cup])

    respond_to do |format|
      if @squishee_cup.save
        format.html { redirect_to @squishee_cup, notice: 'Squishee cup was successfully created.' }
        format.json { render json: @squishee_cup, status: :created, location: @squishee_cup }
      else
        format.html { render action: "new" }
        format.json { render json: @squishee_cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /squishee_cups/1
  # PUT /squishee_cups/1.json
  def update
    @squishee_cup = SquisheeCup.find(params[:id])
    puts params.to_json
    respond_to do |format|
      if @squishee_cup.update_attributes(params[:squishee_cup])
        format.html { redirect_to @squishee_cup, notice: 'Squishee cup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @squishee_cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squishee_cups/1
  # DELETE /squishee_cups/1.json
  def destroy
    @squishee_cup = SquisheeCup.find(params[:id])
    @squishee_cup.destroy

    respond_to do |format|
      format.html { redirect_to squishee_cups_url }
      format.json { head :no_content }
    end
  end
end
