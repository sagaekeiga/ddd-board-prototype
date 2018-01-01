# == Schema Information
#
# Table name: meeting_documents
#
#  id         :integer          not null, primary key
#  meeting_id :integer
#  document   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MeetingDocument < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :meeting

  # CarrierWave
  mount_uploader :document, MeetingDocumentUploader

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :document, presence: true
end
