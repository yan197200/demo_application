class RenameWiewsToViews < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :wiews, :views
  end
end
