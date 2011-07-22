require 'spec_helper'

describe "/stories/edit.html.erb" do
  include StoriesHelper

  before(:each) do
    assigns[:story] = @story = stub_model(Story,
      :new_record? => false,
      :name => "value for name",
      :narrative => "value for narrative",
      :estimate => 1,
      :priority => 1
    )
  end

  it "renders the edit story form" do
    render

    response.should have_tag("form[action=#{story_path(@story)}][method=post]") do
      with_tag('input#story_name[name=?]', "story[name]")
      with_tag('textarea#story_narrative[name=?]', "story[narrative]")
      with_tag('input#story_estimate[name=?]', "story[estimate]")
      with_tag('input#story_priority[name=?]', "story[priority]")
    end
  end
end
