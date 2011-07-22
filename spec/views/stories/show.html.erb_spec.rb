require 'spec_helper'

describe "/stories/show.html.erb" do
  include StoriesHelper
  before(:each) do
    assigns[:story] = @story = stub_model(Story,
      :name => "value for name",
      :narrative => "value for narrative",
      :estimate => 1,
      :priority => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ narrative/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
