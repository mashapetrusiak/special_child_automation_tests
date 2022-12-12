When /^I debug with byebug$/ do
  ##
  # The first `byebug' is always skipped.
  #
  byebug

  byebug
end

Then (/^I pause$/) do
  binding.pry
end

# I wait 2 seconds
# I wait 0.5 seconds
# I wait 0.55 seconds
Given /^I wait (\d+(?:\.\d+)?) seconds?$/ do |sec|
  sleep(sec.to_f)
end

And /^I (reload|refresh) the page$/ do |action|
  case action
  when "reload"
    visit current_path
  when "refresh"
    page.evaluate_script("window.location.reload()");
  end
  step 'I wait for the page to load'
end
