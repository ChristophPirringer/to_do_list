require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('the todo path', {type: :feature}) do
  it('displays a list of tasks that user inputs') do
    visit('/')
    fill_in('description', with: "eat a banana")
    click_button('Save')
    click_link('back')
    expect(page).to have_content('eat a banana')
  end

  # it('displays a list of tasks that user inputs') do
  #   visit('/')
  #   fill_in('description', with: "eat a banana")
  #   click_button('Save')
  #   click_link('back')
  #   click_button('Clear List')
  #   click_link('back')
  #   expect(page).to ! have_content('eat a banana')
  #
  # end
end
