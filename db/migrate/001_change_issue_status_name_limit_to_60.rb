class ChangeIssueStatusNameLimitTo60 < ActiveRecord::Migration
  def self.up
    change_column :issue_statuses, :name, :string, :limit => 60, :default => "", :null => false
  end

  def self.down
    change_column :issue_statuses, :name, :string, :limit => 30, :default => "", :null => false
  end
end
