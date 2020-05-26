class Dokumentation < ApplicationRecord
    has_many :fotos, as: :hasManyFotos
    has_many :bemerkungs, as: :hasManyBemerkungen
end
