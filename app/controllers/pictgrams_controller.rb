#
# ピクト図解の管理
#
class PictgramsController < ApplicationController

  # GET /pictgrams/new
  def new
    @index = params[:td_number].to_s
    @pictgram = Pictgram.new
  end

  # POST /pictgrams
  def create
    @pictgram = Pictgram.new(pictgram_params)
    respond_to do |format|
      if @pictgram.save
        format.html { redirect_to dashboards_models_url, success: 'registered' }
        format.json { render :show, status: :created, location: @pictgram }
      else
        format.html { render :new }
        format.json { render json: @pictgram.errors, status: :unprocessable_entity }
      end
    end
  end

  def element
  end

  def connector
  end

  private

  # @TODO statusごとにパラメータ分ける
  def pictgram_params
    ps = params.require(:pictgram).permit(
      :domain_id,
      :connector_id,
      :td_number,
      :income_line,
      :outcome_line,
      :note,
      :status
    )
    ps.merge(status: params[:pictgram][:status].to_i)
  end

end
