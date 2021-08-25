class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :tag_line
      t.string :location
      t.text :about_me
      t.integer :age
      t.string :quote
      t.string :quote_author
      t.boolean :published?
      t.references :user
      t.timestamps
    end
  end
end
