class CreateTodos < ActiveRecord::Migration
  def change
  	create_table :todos do |t|
	  	t.column :task, :text
	  	t.column :priority, :integer, default: 0
	  	t.column :stage, :integer, default: 0
	  	t.column :way, :string
	  	t.timestamps
	end
  end
end
