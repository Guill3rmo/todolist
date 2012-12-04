class ChageTasksColumn < ActiveRecord::Migration
  def change
    remove_column :tasks , :state
    add_column :tasks , :complete , :boolean
  end
end
