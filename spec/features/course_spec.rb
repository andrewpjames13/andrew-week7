require 'rails_helper'

describe 'User can CRUD Courses' do

  scenario 'User can create a course and view the show page' do
    visit '/'
    click_on 'Sign Up'

    fill_in 'user[user_name]', :with => "TestUser"
    fill_in 'user[about]', :with => "abouttest"
    fill_in 'user[password]', :with => "password"

    click_on 'Create User'
    expect(page).to have_content("TestUser")
    expect(page).to have_content("Courses")



    click_on 'Create a course'

    fill_in 'course[title]', :with => "TestTitle"
    click_on 'Create Course'

    expect(page).to have_content("TestTitle")
    expect(page).to have_content("Day")

  end

  scenario 'User can delete a course' do
    visit '/'
    click_on 'Sign Up'

    fill_in 'user[user_name]', :with => "TestUser"
    fill_in 'user[about]', :with => "abouttest"
    fill_in 'user[password]', :with => "password"

    click_on 'Create User'
    expect(page).to have_content("TestUser")
    expect(page).to have_content("Courses")

    click_on 'Create a course'

    fill_in 'course[title]', :with => "TestTitle"
    click_on 'Create Course'

    expect(page).to have_content("TestTitle")
    expect(page).to have_content("Day")

    visit '/'
    expect(page).to have_content("TestTitle")

    click_on 'Delete Course'
  end

  scenario 'User can edit a course' do
    visit '/'
    click_on 'Sign Up'

    fill_in 'user[user_name]', :with => "TestUser"
    fill_in 'user[about]', :with => "abouttest"
    fill_in 'user[password]', :with => "password"

    click_on 'Create User'
    expect(page).to have_content("TestUser")
    expect(page).to have_content("Courses")



    click_on 'Create a course'

    fill_in 'course[title]', :with => "TestTitle"
    click_on 'Create Course'

    expect(page).to have_content("TestTitle")
    expect(page).to have_content("Day")

    click_on 'Edit'

    expect(page).to have_content("Edit Course")

    fill_in 'course[title]', :with => "TestTitleupdate"
    click_on 'Update Course'
    expect(page).to have_content("TestTitleupdate")


  end

end
