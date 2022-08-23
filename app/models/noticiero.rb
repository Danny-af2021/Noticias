class Noticiero < ApplicationRecord
    has_many_attached :image

    validates :title, presence: true
    validates :image, presence: true
    validates :content, presence: true
    validates :category, presence: true
end
