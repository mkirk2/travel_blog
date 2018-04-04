class Comment < ApplicationRecord
  belongs_to :destination
  
  validates_presence_of :comment
end
