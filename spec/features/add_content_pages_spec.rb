require 'rails_helper'

 describe "the add content process" do
   it "adds a new content" do
     visit contents_path
     click_link 'New Content'
     fill_in 'Title', 'Description', :with => 'About me'
     clink_on 'Create Content'
     expect(page).to have_content 'Contents'
   end

   it "gives error when no title or description is entered" do
     visit new_content_path
     click_on 'Create Content'
     expect(page).to have_content 'errors'
   end
 end
