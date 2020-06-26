require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Applicant.destroy_all
Interview.destroy_all 
InterviewApplicant.destroy_all

20.times do 
    Applicant.create(name: Faker::Name.name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone)
end

10.times do
    Interview.create(job_title: Faker::Company.profession, company_name: Faker::Company.name)

end



# (1..20).each do |i|
#     InterviewApplicant.create(applicant_id: i, job_id:
# end

Applicant.all.each do |applicant|
    interviews = Interview.all.sample(3)
    interviews.each  do  |interview|
        InterviewApplicant.create(interview_id: interview.id, applicant_id: applicant.id)
    end
end