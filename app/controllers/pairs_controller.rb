class PairsController < ApplicationController
  # GET /pairs
  # GET /pairs.json
  def index
    @pairs = Pair.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pairs }
    end
  end

  # GET /pairs/1
  # GET /pairs/1.json
  def show
    @pair = Pair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pair }
    end
  end

  # GET /pairs/new
  # GET /pairs/new.json
  def new
    @pair = Pair.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pair }
    end
  end

  # GET /pairs/1/edit
  def edit
    @pair = Pair.find(params[:id])
  end

  # POST /pairs
  # POST /pairs.json
  def create
    @pair = Pair.new(params[:pair])

    respond_to do |format|
      if @pair.save
        format.html { redirect_to @pair, notice: 'Pair was successfully created.' }
        format.json { render json: @pair, status: :created, location: @pair }
      else
        format.html { render action: "new" }
        format.json { render json: @pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pairs/1
  # PUT /pairs/1.json
  def update
    @pair = Pair.find(params[:id])

    respond_to do |format|
      if @pair.update_attributes(params[:pair])
        format.html { redirect_to @pair, notice: 'Pair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pairs/1
  # DELETE /pairs/1.json
  def destroy
    @pair = Pair.find(params[:id])
    @pair.destroy

    respond_to do |format|
      format.html { redirect_to pairs_url }
      format.json { head :no_content }
    end
  end
end
