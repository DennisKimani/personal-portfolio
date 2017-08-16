require 'rails_helper'

 describe Link do
   it { should validate_presence_of :name }
   it { should validate_presence_of :description }
   it { should validate_presence_of :github_link }
   it { should validate_presence_of :launch }
   it { should belong_to :code }
 end
