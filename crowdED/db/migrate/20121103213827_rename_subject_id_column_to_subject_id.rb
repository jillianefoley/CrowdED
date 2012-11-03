class RenameSubjectIdColumnToSubjectId < ActiveRecord::Migration
  def up
	rename_column :resources, :subjectID, :subject_id
  end

  def down
  	rename_column :resources, :subject_id, :subjectID
  end
end
