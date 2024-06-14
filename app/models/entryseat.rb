class Entryseat < ApplicationRecord
    has_many :entryseat_tags, dependent: :destroy
    has_many :tags, through: :entryseat_tags, dependent: :destroy
end
