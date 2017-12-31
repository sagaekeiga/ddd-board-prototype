class CreateUbiquitousTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :ubiquitous_terms do |t|
      t.string :domain_name
      t.string :program_singularized_name
      t.string :program_pluralized_name
      t.text :note
      t.timestamps
    end
  end
end
