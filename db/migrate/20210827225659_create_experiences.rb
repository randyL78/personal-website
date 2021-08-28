class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :company
      t.string :title
      t.string :location
      t.text :description
      t.references :experience_group, null: false

      t.timestamps
    end
  end
end
