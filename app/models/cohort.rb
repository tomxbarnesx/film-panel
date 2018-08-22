class Cohort < ApplicationRecord
    belongs_to :course
    has_many :enrollments, dependent: :destroy
    has_many :profiles, through: :enrollments
end
