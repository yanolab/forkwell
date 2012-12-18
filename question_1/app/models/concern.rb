class Concern < ActiveRecord::Base
  belongs_to :publication, :counter_cache => true
  # attr_accessible :title, :body
end
