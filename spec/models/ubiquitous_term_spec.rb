# == Schema Information
#
# Table name: ubiquitous_terms
#
#  id                        :integer          not null, primary key
#  domain_name               :string
#  program_singularized_name :string
#  program_pluralized_name   :string
#  note                      :text
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

require 'rails_helper'

RSpec.describe UbiquitousTerm, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
