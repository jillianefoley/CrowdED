class AddVotesToResources < ActiveRecord::Migration
  def change
    add_column :resources, :votes, :integer
  end
end
