class Author < ActiveRecord::Base
  has_many :projects
  has_many :tasks
end
