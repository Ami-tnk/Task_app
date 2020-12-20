class CreateTaskComments < ActiveRecord::Migration[5.2]
  def change
    create_table :task_comments do |t|
      t.integer :user_id
      t.integer :task_id
      t.text :comment

      t.timestamps
    end
  end
end
