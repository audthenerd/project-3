class Restaurant < ApplicationRecord
    has_many :menu_items
    has_many :orders
    has_many :reservations
    has_many :customers, through: :reservations
    belongs_to :userrest
end
