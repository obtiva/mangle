require 'spec_helper'

describe "/stories/index.html.erb" do
  include StoriesHelper

  before(:each) do
    assigns[:stories] = [
      stub_model(Story,
        :name => "value for name",
        :narrative => "value for narrative",
        :estimate => 1,
        :priority => 1
      ),
      stub_model(Story,
        :name => "value for name",
        :narrative => "value for narrative",
        :estimate => 1,
        :priority => 1
      )
    ]
  end

  it "renders a list of stories" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for narrative".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
