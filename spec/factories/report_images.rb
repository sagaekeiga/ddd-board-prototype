# == Schema Information
#
# Table name: report_images
#
#  id         :integer          not null, primary key
#  report_id  :integer
#  image      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :report_image do
    report nil
    image { open(Faker::Avatar.image) }
  end
end
