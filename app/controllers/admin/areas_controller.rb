# frozen_string_literal: true
module Admin
  class AreasController < Admin::ApplicationController
    layout 'admin'
    before_action :set_area, only: [:show, :edit, :update, :destroy]

    # GET /admin/areas
    # GET /admin/areas.json
    def index
      @areas = Area.all
    end

    # GET /admin/areas/1
    # GET /admin/areas/1.json
    def show
    end

    # GET /admin/areas/new
    def new
      @area = Area.new
    end

    # GET /admin/areas/1/edit
    def edit
    end

    # POST /admin/areas
    # POST /admin/areas.json
    def create
      @area = Area.new(area_params)

      respond_to do |format|
        if @area.save
          format.html { redirect_to admin_areas_path, notice: 'Area was successfully created.' }
          format.json { render :show, status: :created, location: @area }
        else
          format.html { render :new }
          format.json { render json: @area.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/areas/1
    # PATCH/PUT /admin/areas/1.json
    def update
      respond_to do |format|
        if @area.update(area_params)
          format.html { redirect_to admin_areas_path, notice: 'Area was successfully updated.' }
          format.json { render :show, status: :ok, location: @area }
        else
          format.html { render :edit }
          format.json { render json: @area.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/areas/1
    # DELETE /admin/areas/1.json
    def destroy
      @area.destroy
      respond_to do |format|
        format.html { redirect_to admin_areas_path, notice: 'Area was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
      params.require(:area).permit(:prefecture, :city)
    end
  end
end
