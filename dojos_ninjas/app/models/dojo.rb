class Dojo < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 255 }
    validates :city, presence: true, length: { maximum: 255 }
    validates :state, presence: true, length: { maximum: 2 }
    has_many :ninjas
end
