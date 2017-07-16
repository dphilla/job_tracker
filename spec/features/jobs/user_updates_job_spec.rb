require 'rails_helper'

describe "User update a job" do
  it "user can update a specific job" do
    company = Company.create!(name: "CNN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")

    visit edit_company_job_path(company, job)

    fill_in "job[title]", with: "Al-Jazeera"
    click_button "Update"

    expect(current_path).to eq("/companies/###{Company.last.id}/jobs")
    expect(page).to have_content("Al-Jazeera")
  end
end
