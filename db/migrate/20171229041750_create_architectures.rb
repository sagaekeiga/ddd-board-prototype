class CreateArchitectures < ActiveRecord::Migration[5.1]
  def change
    create_table :architectures do |t|
      t.integer :layer

      t.timestamps
    end
  end
end
