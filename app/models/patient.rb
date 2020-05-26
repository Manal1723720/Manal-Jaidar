class Patient < ApplicationRecord
    #attr_accessor :vorname
    has_many :wounds
    has_and_belongs_to_many :keims
    has_and_belongs_to_many :allergies
    has_and_belongs_to_many :sonstigs

    #Pflichtfelder
    validates_presence_of :vorname
    validates_presence_of :nachname
end
