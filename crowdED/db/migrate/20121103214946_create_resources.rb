class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.text :description
      t.date :editDate
      t.integer :subject_id

      t.timestamps
    end
  end
end
