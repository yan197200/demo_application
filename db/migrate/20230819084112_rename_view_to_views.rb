class RenameViewToViews < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :view, :wiews
  end
end
