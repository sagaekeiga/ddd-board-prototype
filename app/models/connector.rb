# == Schema Information
#
# Table name: connectors
#
#  id          :integer          not null, primary key
#  show_name   :string
#  select_name :string
#  direction   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Connector < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :pictgram, optional: true

  def self.present_by_td_number?(td_number)
    find_by(id: Pictgram.find_by_td_number(td_number).connector_id)
  end
end
