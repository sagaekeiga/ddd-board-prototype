class CreatePictgrams < ActiveRecord::Migration[5.1]
  def change
    create_table :pictgrams do |t|
      t.references :connector
      t.references :domain
      t.string :spending_line
      t.string :td_number
      t.text :note
      t.integer :status
      t.timestamps
    end
  end
end
