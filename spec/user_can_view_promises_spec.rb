require 'rails_helper'

feature "When a User visits the homepage" do
  scenario "should show all promises" do
    promises = create_list(:promise, 8)

    visit '/'

    expect(page).to have_content("Promises")
    expect(page).to have_content(promises[0].title)
    expect(page).to have_content(promises[1].promiser)
  end

  scenario "user can click on a promise to see more details" do
    promises = create_list(:promise, 5)

    promise_test = promises[2]

    visit '/'

    click_on("#{promise_test.title}")

    expect(current_path).to eq("/promises/#{promise_test.id}")
    expect(page).to have_content(promise_test.title)
    expect(page).to have_content(promise_test.promiser)
    expect(page).to_not have_content(promises[0].title)
  end
end
