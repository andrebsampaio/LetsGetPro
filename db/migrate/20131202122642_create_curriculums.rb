class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :description
      t.string :contact
      t.integer :age
      t.string :education
      t.string :misc

      t.timestamps
    end
  end
end
