# == Schema Information
#
# Table name: connectors
#
#  id         :integer          not null, primary key
#  symbol     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Connector, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
