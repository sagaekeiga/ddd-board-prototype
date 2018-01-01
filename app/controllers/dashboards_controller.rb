class DashboardsController < ApplicationController

  def index
  end

  def architectures
  end

  # GET /domains/models
  def models
    @domains = Domain.all
  end

  def issues
  end

  def meetings
    @meetings = Meeting.all
  end

  def documents
  end

end
