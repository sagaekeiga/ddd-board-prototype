class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :content
      t.datetime :opened_on
      t.integer :status
      t.timestamps
    end
  end
end
