#
# MTGレポートの管理
#
class ReportsController < ApplicationController

  # GET /reports
  def index
    @reports = Report.all
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'registered' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  private

  def report_params
    params.require(:report).permit(
      :title,
      :content,
      :opened_on,
      report_images_attributes: %i(id image _destroy)
    )
  end
end
