class ChangeColumnsInAchievements < ActiveRecord::Migration[6.1]
  def change
    remove_column :achievements, :experience_id
    add_reference :achievements, :achievable, polymorphic: true, index: true
  end
end
