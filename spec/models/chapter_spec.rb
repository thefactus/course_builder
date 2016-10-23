require 'rails_helper'

RSpec.describe Chapter, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(255) }
  end

  describe "associations" do
    it { should belong_to :course }
  end
end
