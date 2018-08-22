class Profile < ApplicationRecord
  belongs_to :profileable, polymorphic: true
  has_many :enrollments, dependent: :destroy
  has_many :cohorts, through: :enrollments
end
