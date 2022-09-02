require 'rails_helper'

RSpec.describe Task, :type => :model do

  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.name = "Anything"
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    task = Task.new(name: nil)
    expect(task).to_not be_valid
  end

end
