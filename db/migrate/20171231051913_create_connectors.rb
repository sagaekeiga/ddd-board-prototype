class CreateConnectors < ActiveRecord::Migration[5.1]
  def change
    create_table :connectors do |t|
      t.string :show_name
      t.string :select_name
      t.string :direction

      t.timestamps
    end
  end
end
