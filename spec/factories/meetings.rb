# == Schema Information
#
# Table name: meetings
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
  factory :meeting do
    title { Faker::Commerce.product_name }
    content { Faker::Lorem.paragraph }
    opened_on Time.zone.today
    trait :with_meeting_document do
      after(:create) do |meeting|
        create_list(:meeting_document, 3, meeting: meeting)
      end
    end
  end
end
