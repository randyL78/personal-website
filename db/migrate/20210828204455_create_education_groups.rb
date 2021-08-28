class CreateEducationGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :education_groups do |t|
      t.string :quote
      t.string :quote_author
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
