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

class Connector < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :pictgram, optional: true
end
