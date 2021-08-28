class CreateExperienceGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :experience_groups do |t|
      t.string :quote
      t.string :quote_author
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
