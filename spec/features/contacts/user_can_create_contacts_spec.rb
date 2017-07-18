require 'spec_helper'

describe "User can create new contact at company" do
  scenario "User creates new contact for company" do
    company = create(:company)
        contact = build(:contact)

        visit company_path(company)
        fill_in "contact_first_name", with: contact.full_name
        fill_in "contact_name_name", with: contact.last_name
        fill_in "contact_position", with: contact.position
        fill_in "contact_email", with: contact.email
        click_on "Create Contact"

        expect(current_path).to eq(company_jobs_path(company))
        expect(page).to have_content(contact.full_name)
        expect(page).to have_content(contact.position)
        expect(page).to have_content(contact.email)

  end
end
