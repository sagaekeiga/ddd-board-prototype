class CreateDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :domains do |t|
      t.integer :structure
      t.string :physical_name
      t.string :logical_name
      t.text :note
      t.timestamps
    end
  end
end
