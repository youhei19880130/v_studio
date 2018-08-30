# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search_info
  before_action :basic_auth, if: -> { Rails.env.staging? }
  before_action :detect_variant
  before_action :is_sp?

  private

  def set_search_info
    session[:area] = params[:area] if params[:area].present?
    session[:people] = params[:people] if params[:people].present?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'sagasu' && pass == 'space'
    end
  end

  def detect_variant
    request.variant = :phone if is_sp?
  end

  def is_sp?
    @is_sp ||= (Woothee.parse(request.user_agent)[:category] == :smartphone)
  end
end
