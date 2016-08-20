class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :location
      t.string :svctype
      t.string :class
      t.date :job_date
      t.date :due_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
