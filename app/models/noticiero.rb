class Noticiero < ApplicationRecord
   

    validates :title, presence: true
    validates :image, presence: true
    validates :content, presence: true
    validates :category, presence: true
end
