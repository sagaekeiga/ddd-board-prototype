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

class Domain < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :pictgram, optional: true
  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :logical_name, presence: true, uniqueness: true

  def self.present_by_td_number?(td_number)
    find_by(id: Pictgram.find_by_td_number(td_number).domain_id)
  end
end
