require 'rails_helper'

describe 'Valid user can log in' do

  scenario 'Creating and logging in' do
    visit '/'
    click_on 'Sign Up'

    fill_in 'user[user_name]', :with => "TestUser"
    fill_in 'user[about]', :with => "abouttest"
    fill_in 'user[password]', :with => "password"

    click_on 'Create User'
    expect(page).to have_content("TestUser")
    expect(page).to have_content("Courses")

  end


end
