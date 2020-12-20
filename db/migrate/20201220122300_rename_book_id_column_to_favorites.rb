class RenameBookIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :book_id, :task_id
  end
end
