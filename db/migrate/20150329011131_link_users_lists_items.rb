class LinkUsersListsItems < ActiveRecord::Migration
  def change
    # Add link to list's items
    add_column :lists, :user_id, :integer, index: true

    # Add link to item's list
    add_column :items, :list_id, :integer,  index: true
  end
end
