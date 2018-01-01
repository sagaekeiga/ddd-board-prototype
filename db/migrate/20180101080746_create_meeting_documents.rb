class CreateMeetingDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :meeting_documents do |t|
      t.belongs_to :meeting, foreign_key: true
      t.string :document, null: false
      t.timestamps
    end
  end
end
