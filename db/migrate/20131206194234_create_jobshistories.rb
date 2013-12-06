class CreateJobshistories < ActiveRecord::Migration
  def change
    create_table :jobshistories do |t|
      t.integer :start
      t.integer :end
      t.string :company
      t.string :location
      t.string :job

      t.timestamps
    end
  end
end
