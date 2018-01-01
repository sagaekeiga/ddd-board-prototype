class CreateConnectors < ActiveRecord::Migration[5.1]
  def change
    create_table :connectors do |t|
      t.string :symbol
      t.timestamps
    end
  end
end
