require "rails_helper"

feature "As a user" do
  context "when I click on create new promise from home page" do
    scenario "I can create a new promise" do
      promises = create_list(:promise, 3)

      new_promise = {
            title: "New Title",
            promiser: "Billy Bob"
      }

      visit '/'

      expect(page).to_not have_content(new_promise[:title])

      click_on("Add New Promise")

      expect(current_path).to eq('/promises/new')

      fill_in :promise_title, with: new_promise[:title]
      fill_in :promise_promiser, with: new_promise[:promiser]

      click_on("Save Promise")

      expect(current_path).to eq('/')
      expect(page).to have_content(new_promise[:title])
      expect(page).to have_content(new_promise[:promiser])
    end
  end
end
