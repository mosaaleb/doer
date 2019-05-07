require 'rails_helper'

feature 'User sees own todos' do
  scenario 'doesn\'t  see others todo' do
    Todo.create! task: 'buy milk', email: 'someone_else@example.com'

    sign_in_as 'someone@example.com'

    expect(page).not_to have_css '.todos li', text: 'buy milk'
  end
end