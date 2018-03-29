class Film < ApplicationRecord
    belongs_to :User

    validates :name, :genre, length: { maximum: 255 }
   
    validates :year, length: { maximum: 4 }
    validates :synopsis, length: { maximum: 1000}
   

end

