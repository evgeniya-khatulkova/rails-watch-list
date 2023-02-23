class AddReferenceToBookmarkForList < ActiveRecord::Migration[7.0]
  def change
      add_reference :bookmarks, :list, index: true
  end
end
