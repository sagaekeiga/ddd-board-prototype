# == Schema Information
#
# Table name: domains
#
#  id            :integer          not null, primary key
#  structure     :integer
#  physical_name :string
#  logical_name  :string
#  note          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Domain < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :pictgram, optional: true
  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :logical_name, presence: true, uniqueness: true
end
