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

require 'rails_helper'

RSpec.describe ReportImage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
