require 'issue_status'

class IssueStatus < ActiveRecord::Base
  clear_validators!
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, :maximum => 60
  validates_inclusion_of :default_done_ratio, :in => 0..100, :allow_nil => true
end
