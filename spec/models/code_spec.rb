require 'rails_helper'

 describe Code do
   it { should vaildate_presence_of :skill }
   it { should vaildate_presence_of :link }
 end
