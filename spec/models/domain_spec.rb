# == Schema Information
#
# Table name: domains
#
#  id            :integer          not null, primary key
#  physical_name :string
#  logical_name  :string
#  note          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Domain, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
