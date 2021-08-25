class FixColumnNameInProfiles < ActiveRecord::Migration[6.1]
  def change
    rename_column :profiles, :published?, :is_published
  end
end
