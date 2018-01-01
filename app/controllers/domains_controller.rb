#
# ドメイン図の管理
#
class DomainsController < ApplicationController
  #
  # Callbacks
  #
  before_action :set_domain, only: %i(edit update)

  # POST /domains
  def create
    @models = ActiveRecord::Base.connection.tables.map{ |table| Object.const_get(table.classify) rescue nil }.select{ |model_name| model_name.present? }
    @models.each do |model_name|
      Domain.create(logical_name: model_name)
    end
    @domains = Domain.all
    redirect_to dashboards_models_url(@domains)
  end

  # GET /domains/1/edit
  def edit
  end

  # PATCH /domains/1
  def update
    if @domain.update(domain_params)
      redirect_to dashboards_models_url, success: '成功'
    else
      render :edit
    end
  end

  private

  def domain_params
    params.require(:domain).permit(
      :physical_name,
      :logical_name,
      :note
    )
  end

  def set_domain
    @domain = Domain.find(params[:id])
  end
end
