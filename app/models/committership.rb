# == Schema Information
#
# Table name: committerships
#
#  id            :integer       not null, primary key
#  user_id       :integer       
#  repository_id :integer       
#  kind          :integer       default(2)
#  created_at    :datetime      
#  updated_at    :datetime      
#

class Committership < ActiveRecord::Base
  belongs_to :user
  belongs_to :repository
  
  KIND_ACCESS_NONE  = 0
  KIND_ACCESS_READ  = 1
  KIND_ACCESS_WRITE = 2
end
