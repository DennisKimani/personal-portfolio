require 'rails_helper'

 describe "the add admin process" do
   it "adds a new admin" do
     visit admins_path
     click_link 'New Admin'
     fill_in 'Title', 'Description', :with => 'About me'
     clink_on 'Create Admin'
     expect(page).to have_content 'Admins'
   end

   it "gives error when no title or description is entered" do
     visit new_admin_path
     click_on 'Create Admin'
     expect(page).to have_content 'errors'
   end
 end
