#Scenerio 1 

Scenario: I have a Solirius Google account 
  when I have a solirus Google Account 
  Then I should be taken to my profile

  
Given('I navigate to the Bid Tracker Portal') do
  visit 'https://Bidtrackerportal.com/'
  sleep 1 
end 

Then('I should see the google account login page') do 
  visit


when /I sign in/ do 
  within(#Session) do 
    fill_in 'Email', with: 'user@solirius.com'
    fill_in 'Password', with: 'Password'
  end 
  click_button 'sign in'
end 

# Searching for a bid with the title 
Given("I am on the Bid Tracker Portal") do 
  visit 'https://www.Bidtrackerportal.com'
  sleep 1

  when("I will search for {itt}") do |searchText|
    fill_in 'search' , :with => searchText
    sleep 1 
  end

  When("I click search") do 
    find('#search_icon').click
    sleep 1
  end 

Then("I should see a list of opportunities with {itt} in their title") do |expectedText|
  page.should have_content(expectedText)
  sleep 1
end 

# Searching for a bid using the filter feature 
Given("I am on the Bid Tracker Portal") do 
  visit 'https://www.Bidtrackerportal.com'
  sleep 1

  when("I will search for {itt}") do |searchText|
    fill_in 'search' , :with => searchText
    sleep 1 
  end

  When(' I will filter the search to find the live opportunities') do 
    find('#filter_icon').click
    sleep 1 

  When("I click search") do 
    find('#search_icon').click
    sleep 1
  end 

Then("I should see a list of opportunities with {itt} in their title") do |expectedText|
  page.should have_content(expectedText)
  sleep 1
end 



