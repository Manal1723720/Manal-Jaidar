class Wound < ApplicationRecord
    attr_accessor :bezeichnung
    belongs_to :wundart
    belongs_to :patient
   #belongs_to :poly, polymorphic: true, optional: true
    has_many :fotos, as: :hasManyFotos
    has_and_belongs_to_many :faktors
    has_many :bemerkungs, as: :hasManyBemerkungen
end
