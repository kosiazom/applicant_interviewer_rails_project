class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :job_title
      t.string :company_name

      t.timestamps
    end
  end
end
