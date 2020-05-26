class AllergiesPatient < ApplicationRecord
  belongs_to :allergy
  belongs_to :patient
end
