class Jobshistory < ActiveRecord::Base
  belongs_to :curriculum, :class_name => 'Curriculum',:foreign_key => 'curr_id'
end
