require "rails_helper"

describe "User visits category index" do
  scenario "User can create category" do

    category_name = "engineering"

    visit new_category_path
    fill_in "category_name", with: category_name
    click_on "Create Category"

    expect(current_path).to eq("/categories/#{Category.last.id}")
    expect(page).to have_content("engineering")
  end

  scenario "they input invalid information" do
    create(:category, name: "test")
    duplicate_category_name = "test"

    visit new_category_path
    fill_in "category_name", with: "test"
    click_on "Create Category"

    expect(page).to have_content("Create a new category")
  end
end
