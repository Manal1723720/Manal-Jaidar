class Wunde < ApplicationRecord
    #optional: true to the belongs_to association which removes validation check
    #so we can create wundes without loks, patients and arts
    belongs_to :poly, polymorphic: true, optional: true
    has_many :fotos, as: :hasManyFotos
    has_and_belongs_to_many :faktors
    has_many :bemerkungs, as: :hasManyBemerkungen
end
