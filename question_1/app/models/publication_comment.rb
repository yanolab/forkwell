class PublicationComment < ActiveRecord::Base
  belongs_to :publication, :counter_cache => true
  attr_accessible :body
end
