require 'rails_helper'

 describe Admin do
   it { should validate_presence_of :title, :description }
 end
