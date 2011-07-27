require 'spec_helper'

describe Story do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :narrative => "value for narrative",
      :estimate => 1,
      :priority => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Story.create!(@valid_attributes)
  end
  
  it "should sort by priority" do
    Story.create!(:name => "low priority", :priority => 3)
    Story.create!(:name => "high priority", :priority => 1)
    Story.by_priority.all.map(&:name).should == ["high priority", "low priority"]
  end
end
