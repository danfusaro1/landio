class LandioItemsController < ApplicationController
  before_action :set_landio_item, only: [:show, :edit, :update, :destroy]

  # GET /landio_items
  # GET /landio_items.json
  def index
    @landio_items = LandioItem.all
  end

  # GET /landio_items/1
  # GET /landio_items/1.json
  def show
  end

  # GET /landio_items/new
  def new
    @landio_item = LandioItem.new
  end

  # GET /landio_items/1/edit
  def edit
  end

  # POST /landio_items
  # POST /landio_items.json
  def create
    @landio_item = LandioItem.new(landio_item_params)

    respond_to do |format|
      if @landio_item.save
        format.html { redirect_to @landio_item, notice: 'Landio item was successfully created.' }
        format.json { render :show, status: :created, location: @landio_item }
      else
        format.html { render :new }
        format.json { render json: @landio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landio_items/1
  # PATCH/PUT /landio_items/1.json
  def update
    respond_to do |format|
      if @landio_item.update(landio_item_params)
        format.html { redirect_to @landio_item, notice: 'Landio item was successfully updated.' }
        format.json { render :show, status: :ok, location: @landio_item }
      else
        format.html { render :edit }
        format.json { render json: @landio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landio_items/1
  # DELETE /landio_items/1.json
  def destroy
    @landio_item.destroy
    respond_to do |format|
      format.html { redirect_to landio_items_url, notice: 'Landio item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landio_item
      @landio_item = LandioItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landio_item_params
      params.require(:landio_item).permit(:description)
    end
end
