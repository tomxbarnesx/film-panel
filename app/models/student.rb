class Student < ApplicationRecord
    has_one :profile, as: :profileable, dependent: :destroy
    accepts_nested_attributes_for :profile
end
