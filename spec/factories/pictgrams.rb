# == Schema Information
#
# Table name: pictgrams
#
#  id           :integer          not null, primary key
#  domain_id    :integer
#  connector_id :integer
#  td_number    :string
#  note         :text
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :pictgram do
    
  end
end
