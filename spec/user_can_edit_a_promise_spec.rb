require "rails_helper"

feature "When a user visits a promise show page" do
  context "and they click on update" do
    scenario "they should be able to edit/update promise" do
      promise = create(:promise)

      visit promise_path(promise)

      expect(page).to have_content("Status:\nin progress")

      click_on("Edit/Update Promise")

      select("done", from: :status )
      click_on("Update Promise")

      expect(current_path).to eq(promise_path(promise))
      expect(page).to have_content("Status:\ndone")
    end
  end
end
