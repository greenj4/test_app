class CreateJobQuotes < ActiveRecord::Migration
  def change
    create_table :job_quotes do |t|
      t.references :job, index: true
      t.references :user, index: true
      t.float :price

      t.timestamps
    end
  end
end
