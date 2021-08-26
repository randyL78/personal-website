class RemoveColumnFromProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :tag_line, :string
  end
end
