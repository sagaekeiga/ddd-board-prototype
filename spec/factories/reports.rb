# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  opened_on  :datetime
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :report do
    title { Faker::Commerce.product_name }
    content { Faker::Lorem.paragraph }
    opened_on Time.zone.today
    trait :with_report_image do
      after(:create) do |report|
        create_list(:report_image, 3, report: report)
      end
    end
  end
end
