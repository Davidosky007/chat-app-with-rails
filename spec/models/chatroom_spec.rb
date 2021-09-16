require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  it { should have_many(:messages) }

  it { should validate_presence_of(:name) }
end
