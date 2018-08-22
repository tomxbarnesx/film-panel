class Admin < ApplicationRecord
    has_one :profile, as: profileable, dependent: :destroy
end
