Feature: Recording uploading for transcription
	In order to make do my job more efficiently
	As a surveyor
	I want to upload recordings for transcription

	Scenario: Display a script for recording
		Given I am on the create recording page
		Then I should see a script for recording

	Scenario: Upload a recording
		Given that I have recorded a sound file
		When I go to the create recording page
		And I select "Male" from "Gender"
		And I fill in "Locale" with "Northern Ireland"
		And I attach the file "spec/fixtures/ballsdeep.wav" to "recording_soundfile"
		And I press "Create Recording"
		Then I should see "Recording was successfully created."

	Scenario: Generate a Mechanical Turk HIT
