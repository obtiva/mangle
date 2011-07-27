class Story < ActiveRecord::Base
  
  named_scope :by_priority, :order => "priority ASC"
  
end
