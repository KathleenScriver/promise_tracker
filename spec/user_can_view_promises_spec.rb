require 'rails_helper'

describe "When a User visits the homepage" do
  it "should show all promises" do
    promises = create_list(:promises, 8)

    visit '/'

    expect(page).to have_content("Promises")
    expect(page).to have_content(promises[0].title)
    expect(page).to have_content(promises[1].promiser)
  end
end
