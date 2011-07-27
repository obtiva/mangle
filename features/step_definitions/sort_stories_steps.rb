Given /^the following stories:$/ do |table|
  table.hashes.each do |story_hash|
    Story.create!(story_hash)
  end
end

Then /^I see the tasks like so:$/ do |table|
  save_and_open_page
  actual_table = tableish(".story_row",
      "td.story_name,td.story_priority")
  table.diff!(actual_table)
end