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

require 'rails_helper'

RSpec.describe Pictgram, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
