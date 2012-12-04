class List < ActiveRecord::Base
  attr_accesible : :title
  has_many :tasks
end
