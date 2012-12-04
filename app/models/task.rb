class Task < ActiveRecord::Base
  attr_accessible :name , :complete
  belongs_to :list

  validates_presence_of :name
end
