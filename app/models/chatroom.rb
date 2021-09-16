class Chatroom < ApplicationRecord
    has_many :messages

    validate_presence_of :name
end
