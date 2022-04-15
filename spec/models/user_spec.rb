require 'rails_helper'
FactoryBot.define do
  factory :user do
    name {"my first author"}
    email {"bqtung123@gmail.com"}
  end
end

RSpec.describe User, type: :model do
  describe "when first created" do
    it "should be empty" do
      expect(subject.name).to be_nil    # subject ở đây là []
    end
  end

  describe Array, "with some elements" do
    subject { [1, 2, 3] }

    it "has the expected elements" do
      expect(subject).to eq([1, 2, 3])
    end

    it "is available as described_class" do
      expect(described_class).to eq(Array)
    end
  end

  describe "Associations" do
    it "has many book" do
      association = described_class.reflect_on_association(:books)
      expect(association.macro).to eq :has_many
    end
  end
end
