require 'spec_helper'

describe "User visits show/index page" do
  scenario "User can delete category" do
    category_1 = create(:category, name: "Tech")

    visit categories_path
    expect(page).to have_content("Tech")

    click_on "Delete"

    expect(current_path).to eq(categories_path)
    expect(page).to_not have_content("Tech")
  end
end
