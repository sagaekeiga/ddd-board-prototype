# == Schema Information
#
# Table name: report_images
#
#  id         :integer          not null, primary key
#  report_id  :integer
#  image      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ReportImage < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :report

  # CarrierWave
  mount_uploader :image, ReportImageUploader

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :image, presence: true
end
