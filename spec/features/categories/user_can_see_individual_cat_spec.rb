require 'spec_helper'

describe "User visits show page" do
  scenario "User can see individual category page" do
    cat = create(:category)

     visit categories_path
     click_on "#{cat.name}"

     expect(current_path).to eq(category_path(cat))
     expect(page).to have_content(cat.name)

  end
end
