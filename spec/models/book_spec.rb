require 'rails_helper'
FactoryBot.define do
  factory :book do
    title {"my first book title"}
    description {"my first book description"}
    association :user
  end
end

RSpec.describe Book, type: :model do
  describe "Associations" do
    it "belongs to author" do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end
  end
end
