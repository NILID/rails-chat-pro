class Room < ApplicationRecord
  has_many :room_messages, dependent: :destroy,
                           inverse_of: :room

  validates :name, presence: true

end
