class AddCounterCacheToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :concerns_count, :integer, :default => 0
    add_column :publications, :publication_comments_count, :integer, :default => 0

    Publication.all.each do |pub|
      Publication.update_counters(pub.id, :concerns_count => pub.concerns.count)
      Publication.update_counters(pub.id, :publication_comments_count => pub.publication_comments.count)
    end
  end
end
