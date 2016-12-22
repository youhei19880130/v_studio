# frozen_string_literal: true
class SearchesController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
    @studios = Studio.by_area(params[:area]).by_people(params[:people].to_i)
  end
end
