#
# ドメイン図の管理
#
class DomainsController < ApplicationController

  def create
    @models = ActiveRecord::Base.connection.tables.map{ |table| Object.const_get(table.classify) rescue nil }.select{ |model_name| model_name.present? }
    @models.each do |model_name|
      Domain.create(logical_name: model_name)
    end
    @domains = Domain.all
    redirect_to dashboards_models_url(@domains)
  end

  def edit
  end

  def update
  end

  private

  def domain_params
    params.require(:domain).permit(
      :physical_name,
      :logical_name,
      :note
    )
  end
end
