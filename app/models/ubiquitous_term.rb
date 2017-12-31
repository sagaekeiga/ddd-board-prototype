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

class UbiquitousTerm < ApplicationRecord
end
