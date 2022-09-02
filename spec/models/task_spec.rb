require 'rails_helper'

RSpec.describe Task, :type => :model do

  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.name = "tasks"
    expect(subject).to be_valid
  end

  it "is not valid if task name is shorter than 5 chars" do
    task = Task.new(name: 'task')
    expect(task).to_not be_valid
  end

  it "is not valid without a name" do
    task = Task.new(name: nil)
    expect(task).to_not be_valid
  end

end
