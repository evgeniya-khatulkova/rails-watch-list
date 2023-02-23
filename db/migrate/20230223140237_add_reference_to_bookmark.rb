class AddReferenceToBookmark < ActiveRecord::Migration[7.0]
    def change
      add_reference :bookmarks, :movie, index: true
  end
end
