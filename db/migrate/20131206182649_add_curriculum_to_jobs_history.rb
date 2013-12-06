class AddCurriculumToJobsHistory < ActiveRecord::Migration
  def change
    add_column :jobs_histories, :curr_id, :integer
  end
end
