class Foto < ApplicationRecord
    belongs_to :hasManyFotos, polymorphic: true, optional: true
end
