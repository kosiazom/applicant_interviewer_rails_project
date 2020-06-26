class CreateInterviewApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :interview_applicants do |t|
      t.integer :interview_id
      t.integer :applicant_id
      
      t.timestamps
    end
  end
end
