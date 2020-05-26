class Wundart < ApplicationRecord
    attr_accessor :art_name
    #dependent: :destroy, damit alle zugehörigen Wunden gelöscht werden, falls die Wundart gelöscht wird
    #has_many :wounds, as: :poly
    has_many :wounds

    def name
        puts "#{art_name}"
    end
end
