require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the word path", {:type => :feature}) do
  it("directs the user to a links page or a post page") do
    visit('/')
    click_link("See Word List")
    expect(page).to have_content("Words")
  end
end

describe("the word form path", {:type => :feature}) do
  it("takes the user to the dealer form") do
    visit('/')
    click_link("Add New Word")
    expect(page).to have_content("Add New Words")
  end
end
