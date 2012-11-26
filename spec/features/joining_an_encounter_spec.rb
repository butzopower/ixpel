require 'spec_helper'

feature "joining an encounter" do
  scenario "joining a solo encounter" do
    visit "/"

    click_link "Fight the Skeleton"

    page.should have_content "Skeleton"
  end
end