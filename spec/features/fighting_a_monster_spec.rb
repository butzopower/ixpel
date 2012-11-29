require 'spec_helper'

feature "fighting a monster" do
  describe "a solo encounter" do
    scenario "joining a solo encounter" do
      visit "/"

      click_link "Fight the Skeleton"

      page.should have_content "Skeleton"
    end

    scenario "fighting the monster" do
      visit "/"

      click_link "Fight the Skeleton"

      click_button "Attack"

      page.should have_content "You have defeated the Skeleton!"
    end
  end
end