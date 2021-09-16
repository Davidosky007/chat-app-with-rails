class Chatroom < ApplicationRecord
    has_many :messages

    validates_presence_of :name
end
