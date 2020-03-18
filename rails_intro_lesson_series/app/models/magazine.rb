class Magazine < ApplicationRecord
    has_many :articles
    has_many :authors, through: :articles

    def self.find_mags(category)
        if category
            Magazine.where(category: category)
        else
            Magazine.all
        end
    end
end
