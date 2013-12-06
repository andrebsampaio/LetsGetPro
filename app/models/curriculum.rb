class Curriculum < ActiveRecord::Base
  belongs_to :user, :class_name => 'User',:foreign_key => 'user_id'
  has_many :jobshistories, :class_name => 'Jobshistory',:foreign_key => 'curr_id'
end
