class Post < ActiveRecord::Base
  attr_accessible :message, :name

  default_scope :order => 'created_at DESC'

  belongs_to :user
  
end
