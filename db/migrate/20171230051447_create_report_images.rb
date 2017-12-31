class CreateReportImages < ActiveRecord::Migration[5.1]
  def change
    create_table :report_images do |t|
      t.belongs_to :report, foreign_key: true
      t.string :image, null: false
      t.timestamps
    end
  end
end
