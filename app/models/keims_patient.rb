class KeimsPatient < ApplicationRecord
  belongs_to :keim
  belongs_to :patient
end
