require 'rails_helper'

RSpec.feature "User visits job index" do
  scenario "user can delete an existing job" do
    company_1 = create(:company)
    job_1 = create(:job, company_id: company_1.id)

    visit company_jobs_path(company_1)
    expect(page).to have_content(job_1.title)

    click_on "Delete"

    expect(current_path).to eq(company_jobs_path(company_1))
    expect(page).to have_content("#{job_1.title} was successfully deleted!")
  end
end
