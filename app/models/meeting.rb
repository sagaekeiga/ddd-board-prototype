# == Schema Information
#
# Table name: meetings
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  opened_on  :datetime
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meeting < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :meeting_documents, dependent: :destroy, inverse_of: :meeting
  accepts_nested_attributes_for :meeting_documents, allow_destroy: true
  
  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------

  #
  # ミーティングの状態
  #
  # - noted      : 予告済み
  # - completed  : 報告済み
  #
  enum status: {
    noted: 1000,
    completed: 2000
  }
end
