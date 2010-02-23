class Project < ActiveRecord::Base
  has_many :tasks
  belongs_to :author
  has_many :tags
  
  accepts_nested_attributes_for :tags,  :reject_if => lambda { |a| a.values.all?(&:blank?) }, :allow_destroy => true
  accepts_nested_attributes_for :tasks,  :reject_if => lambda { |a| a.values.all?(&:blank?) }, :allow_destroy => true
end
