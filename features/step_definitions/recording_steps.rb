Given /^that I have recorded a sound file$/ do
  soundfile = File.new(Rails.root + 'spec/fixtures/ballsdeep.wav')
end  

Then /^I should see a script for recording$/ do
  page.should have_content('Script for recording:')
end
