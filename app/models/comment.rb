# == Schema Information
#
# Table name: comments
#
#  id            :integer       not null, primary key
#  user_id       :integer       not null
#  repository_id :integer       not null
#  sha1          :string(255)   not null
#  body          :text          
#  created_at    :datetime      
#  updated_at    :datetime      
#  project_id    :integer       
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :repository
  belongs_to :project
  
  attr_protected :user_id
    
  validates_presence_of :user_id, :repository_id, :body, :project_id
  
  
end
