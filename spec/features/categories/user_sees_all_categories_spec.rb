require 'spec_helper'

describe "User visits categories page" do
  scenario "User can see all category" do
    category_1 = create(:category)
    category_2 = create(:category)

    visit categories_path

    expect(page).to have_content(category_1.name)
    expect(page).to have_content(category_2.name)
  end
end
