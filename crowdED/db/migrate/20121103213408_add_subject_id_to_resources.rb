class AddSubjectIdToResources < ActiveRecord::Migration
  def change
    add_column :resources, :subjectID, :integer
  end
end
