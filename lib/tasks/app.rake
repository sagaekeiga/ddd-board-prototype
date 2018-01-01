    namespace :app do
      namespace :dev do
        task reset: %i( db:drop db:create db:migrate db:seed app:dev:sample)
        task sample: :environment do
          FactoryBot.create_list(:meeting, 2, :with_meeting_document)
        end
        task set: :environment do
          exec 'bundle exec annotate --routes'
        end
      end
    end
