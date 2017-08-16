require 'rails_helper'

 describe "the add link process" do
   it "adds a new link" do
     visit links_path
     click_link 'New Link'
     fill_in 'Name', 'Description', 'Github_link', 'Launch', :with => 'reference'
     clink_on 'Create Link'
     expect(page).to have_content 'Links'
   end

   it "gives error when no name, description, github_link or launch is entered" do
     visit new_link_path
     click_on 'Create Link'
     expect(page).to have_content 'errors'
   end
 end
