class CurvesController < ApplicationController


  # GET /curves
  # GET /curves.json
  def index
    @curves = Curve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @curves }
    end
  end

  # GET /curves/1
  # GET /curves/1.json
  def show
    @curve = Curve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @curve }
    end
  end

  # GET /curves/new
  # GET /curves/new.json
  def new
    @curve = Curve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @curve }
    end
  end

  # GET /curves/1/edit
  def edit
    @curve = Curve.find(params[:id])
  end

  # POST /curves
  # POST /curves.json
  def create
    @curve = Curve.new(params[:curve])

    respond_to do |format|
      if @curve.save
        format.html { redirect_to @curve, notice: 'Curve was successfully created.' }
        format.json { render json: @curve, status: :created, location: @curve }
      else
        format.html { render action: "new" }
        format.json { render json: @curve.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /curves/1
  # PUT /curves/1.json
  def update
    @curve = Curve.find(params[:id])

    respond_to do |format|
      if @curve.update_attributes(params[:curve])
        format.html { redirect_to @curve, notice: 'Curve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @curve.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curves/1
  # DELETE /curves/1.json
  def destroy
    @curve = Curve.find(params[:id])
    @curve.destroy

    respond_to do |format|
      format.html { redirect_to curves_url }
      format.json { head :no_content }
    end
  end

  def import
    Curve.import(params[:file])
    redirect_to root_url, notice: "Curves imported."
  end
end
