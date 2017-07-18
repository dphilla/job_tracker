require 'spec_helper'

describe "User visits show/index page" do
  scenario "User can edit a category" do
  cat = create(:category)
   new_name = "ninja"

   visit categories_path
   click_on "Edit"
   fill_in "category_name", with: new_name
   click_on "Update Category"

   expect(current_path).to eq(categories_path)
   expect(page).to have_content("ninja")
  end
end
