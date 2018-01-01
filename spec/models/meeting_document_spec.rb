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

require 'rails_helper'

RSpec.describe MeetingDocument, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
