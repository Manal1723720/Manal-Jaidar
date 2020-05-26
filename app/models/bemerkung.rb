class Bemerkung < ApplicationRecord
    belongs_to :hasManyBemerkungen, polymorphic: true, optional: true
end
