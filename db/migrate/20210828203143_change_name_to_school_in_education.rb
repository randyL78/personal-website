class ChangeNameToSchoolInEducation < ActiveRecord::Migration[6.1]
  def change
    rename_column :educations, :name, :school
  end
end
