class Tag < ApplicationRecord
    has_many :entryseat_tags, dependent: :destroy
    has_many :entryseats, through: :entryseat_tags, dependent: :destroy
end
