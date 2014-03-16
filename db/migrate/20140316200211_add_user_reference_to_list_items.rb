class AddUserReferenceToListItems < ActiveRecord::Migration
  def change
    add_reference :list_items, :user, index: true
  end
end
