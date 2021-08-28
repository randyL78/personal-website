class AddColumnsToEducation < ActiveRecord::Migration[6.1]
  def change
    add_column :educations, :location, :string
    add_column :educations, :level, :string
  end
end
