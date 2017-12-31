class DashboardsController < ApplicationController

  def index
  end
  # GET /domains/models
  def models
    @models = ActiveRecord::Base.connection.tables.map{ |table| Object.const_get(table.classify) rescue nil }.select{ |model_name| model_name.present? }
    @models.each do |model_name|
      Domain.create(logical_name: model_name)
    end
    @domains = Domain.all
  end
  # GET /domains/controllers
  def controllers
  end
  # GET /domains/views
  def views
    @routes = Rails.application.routes.routes
  end
end
