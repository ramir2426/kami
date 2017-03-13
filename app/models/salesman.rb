class Salesman < ApplicationRecord
	validates :name, :email, :phone, :gender, :age, :qualification, :work_experience, :cv, :job_type, presence: :true
	enum gender: [:male, :female]
end
