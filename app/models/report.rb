# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  opened_on  :datetime
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Report < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :report_images, dependent: :destroy, inverse_of: :report
  accepts_nested_attributes_for :report_images, allow_destroy: true
end
