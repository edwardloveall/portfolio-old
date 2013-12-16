class Project < ActiveRecord::Base
  belongs_to :category
  has_attached_file :poster
end
