class AddEducation < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :major
      t.string :minor
      t.decimal :gpa, precision: 3, scale: 2
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
