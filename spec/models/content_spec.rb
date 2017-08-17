require 'rails_helper'

 describe Content do
   it { should validate_presence_of :title, :description }
 end
