class Interview < ApplicationRecord
    has_many :interview_applicants
    has_many :applicants, through: :interview_applicants

end
