require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:subtitle) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:duration) }
    it { should validate_numericality_of(:price).is_greater_than(0) }
    it { should validate_numericality_of(:duration).is_greater_than(0) }
    it { should validate_length_of(:name).is_at_most(255) }
    it { should validate_length_of(:subtitle).is_at_most(255) }
  end

  describe 'associations' do
    it { should have_many :chapters }
  end
end
