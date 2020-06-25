class Applicant < ApplicationRecord
    has_many :interview_applicants
    has_many :interviews, through: :interview_applicants
end
