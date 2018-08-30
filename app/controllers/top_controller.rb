# frozen_string_literal: true
class TopController < ApplicationController
  layout 'top'

  def index
    session.delete(:area)
    session.delete(:people)
  end
end
