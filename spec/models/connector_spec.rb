# == Schema Information
#
# Table name: connectors
#
#  id         :integer          not null, primary key
#  name       :string
#  direction  :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Connector, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
