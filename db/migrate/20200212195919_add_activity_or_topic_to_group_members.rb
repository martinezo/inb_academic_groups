class AddActivityOrTopicToGroupMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :group_members, :activities_or_topics_es, :text
    add_column :group_members, :activities_or_topics_en, :text
  end
end
