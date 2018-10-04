class Section < ApplicationRecord
        has_many :enrollments
	has_many :students, through: :enrollments
       
	belongs_to :course
end
