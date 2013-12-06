class AddCurriculumToJobshistory < ActiveRecord::Migration
  def change
    add_column :jobshistories, :curr_id, :integer
  end
end
