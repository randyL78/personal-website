class CreateAchievements < ActiveRecord::Migration[6.1]
  def change
    create_table :achievements do |t|
      t.string :description
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
