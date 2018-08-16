# frozen_string_literal: true
module Admin
  class StudiosController < Admin::ApplicationController
    layout 'admin'
    before_action :set_studio, only: [:show, :edit, :update, :destroy]

    # GET /studios
    # GET /studios.json
    def index
      @studios = Studio.all
    end

    # GET /studios/1
    # GET /studios/1.json
    def show
    end

    # GET /studios/new
    def new
      @studio = Studio.new
      @studio.build_studio_image
    end

    # GET /studios/1/edit
    def edit
      set_studio
      @studio.build_studio_image unless @studio.studio_image.present?
    end

    # POST /studios
    # POST /studios.json
    def create # rubocop:disable Metrics/AbcSize
      @studio = Studio.new(studio_params)
      # @studio.image = params[:studio][:image].read if params[:studio][:image]

      respond_to do |format|
        if @studio.save
          format.html { redirect_to admin_studios_path, notice: 'Studio was successfully created.' }
          format.json { render :index }
        else
          format.html { render :new }
          format.json { render json: @studio.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /studios/1
    # PATCH/PUT /studios/1.json
    def update # rubocop:disable Metrics/AbcSize
      if params[:studio][:studio_image_attributes].present?
        @studio.image = nil
      else
        @studio.image = params[:studio][:image].read if params[:studio][:image]
      end
      respond_to do |format|
        if @studio.update(studio_params)
          format.html { redirect_to admin_studios_path, notice: 'Studio was successfully updated.' }
          format.json { render :show, status: :ok, location: @studio }
        else
          format.html { render :edit }
          format.json { render json: @studio.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /studios/1
    # DELETE /studios/1.json
    def destroy
      @studio.destroy
      respond_to do |format|
        format.html { redirect_to admin_studios_path, notice: 'Studio was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    def upload
      @studio = Studio.friendly.find(params[:studio_id])
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_studio
      @studio = Studio.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studio_params
      params.require(:studio).permit(:name, :area_id, :address, :nearest_station_1,
                                     :nearest_station_2, :nearest_station_3, :tel, :start_hours,
                                     :end_hours, :late_night, :locker_room, :parking,
                                     :cancell_deadline, :url, :feature, :remarks, :memo, :status,
                                     :slug, :meta_title, :meta_description, :meta_ogp_image_url,
                                     studio_image_attributes: [:id, :studio_id, :url])
    end
  end
end
