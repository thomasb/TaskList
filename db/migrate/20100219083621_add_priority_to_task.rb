class AddPriorityToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :priority, :string
  end

  def self.down
    remove_column :tasks, :priority
  end
end
