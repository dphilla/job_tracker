require 'rails_helper'

describe "User deletes a job" do
  scenario "user can delete a job" do
    company = Company.create!(name: "CNN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")

    visit company_jobs_path(company)

    click_link "Delete"

    visit company_path(company)

    expect(page).to_not have_content(job.title)
  end
end
