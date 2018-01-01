namespace :app do
  namespace :dev do
    task reset: %i( db:drop db:create db:migrate db:seed app:dev:sample)
    task sample: :environment do

      # ドメインデータのセットアップ
      model_names = ActiveRecord::Base.connection.tables.map{ |table| Object.const_get(table.classify) rescue nil }.select{ |model_name| model_name.present? }
      model_names.each { |model_name| Domain.create(logical_name: model_name) }

      # FactoryBot
      FactoryBot.create_list(:meeting, 2, :with_meeting_document)
      FactoryBot.create(:pictgram, domain_id: Domain.first.id, td_number: 'a3', status: 1000)
      FactoryBot.create(:pictgram, connector_id: Connector.second.id, spending_line: '商品', td_number: 'a4', status: 2000)
    end
    task set: :environment do
      exec 'bundle exec annotate --routes'
    end
  end
end
