# == Schema Information
#
# Table name: meeting_documents
#
#  id         :integer          not null, primary key
#  meeting_id :integer
#  document   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :meeting_document do
    meeting nil
    document { open(Faker::Avatar.image) }
  end
end
