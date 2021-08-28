class AddEducationGroupIdToEducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :educations, :education_group, null: false, foreign_key: true
  end
end
