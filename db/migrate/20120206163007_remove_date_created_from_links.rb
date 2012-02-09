class RemoveDateCreatedFromLinks < ActiveRecord::Migration
  def up
    remove_column :links, :date_created
  end

  def down
    add_column :links, :date_created, :datetime
  end
end
