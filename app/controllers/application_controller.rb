# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search_info

  private

  def set_search_info
    session[:area] = params[:area] if params[:area]
    session[:people] = params[:people] if params[:people]
  end
end
