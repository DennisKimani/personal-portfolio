require 'rails_helper'

 describe "the add code process" do
   it "adds a new code" do
     visit links_path
     click_link 'New Code'
     fill_in 'Skill', :with => 'My skills'
     clink_on 'Create Code'
     expect(page).to have_content 'codes'
   end

   it "gives error when no skill is entered" do
     visit new_code_path
     click_on 'Create Code'
     expect(page).to have_content 'errors'
   end
 end
