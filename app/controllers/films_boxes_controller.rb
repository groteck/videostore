class FilmsBoxesController < ApplicationController
  # GET /films_boxes
  # GET /films_boxes.json
  def index
    @films_boxes = FilmsBox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @films_boxes }
    end
  end

  # GET /films_boxes/1
  # GET /films_boxes/1.json
  def show
    @films_box = FilmsBox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @films_box }
    end
  end

  # GET /films_boxes/new
  # GET /films_boxes/new.json
  def new
    @films_box = FilmsBox.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @films_box }
    end
  end

  # GET /films_boxes/1/edit
  def edit
    @films_box = FilmsBox.find(params[:id])
  end

  # POST /films_boxes
  # POST /films_boxes.json
  def create
    @films_box = FilmsBox.new(params[:films_box])

    respond_to do |format|
      if @films_box.save
        format.html { redirect_to @films_box, notice: 'Films box was successfully created.' }
        format.json { render json: @films_box, status: :created, location: @films_box }
      else
        format.html { render action: "new" }
        format.json { render json: @films_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /films_boxes/1
  # PUT /films_boxes/1.json
  def update
    @films_box = FilmsBox.find(params[:id])

    respond_to do |format|
      if @films_box.update_attributes(params[:films_box])
        format.html { redirect_to @films_box, notice: 'Films box was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @films_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films_boxes/1
  # DELETE /films_boxes/1.json
  def destroy
    @films_box = FilmsBox.find(params[:id])
    @films_box.destroy

    respond_to do |format|
      format.html { redirect_to films_boxes_url }
      format.json { head :no_content }
    end
  end
end
