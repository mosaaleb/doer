require 'rails_helper'

feature 'user adds todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new task'
    fill_in 'todo[task]', with: 'Go shopping'
    click_on 'Add task'

    expect(page).to have_css '.todos li', text: 'Go shopping'
  end
end
