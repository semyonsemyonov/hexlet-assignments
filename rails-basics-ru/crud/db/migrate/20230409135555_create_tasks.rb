class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.string :status, null: false
      t.string :creator, null: false
      t.string :performer
      t.boolean :completed, null:false

      t.timestamps
    end
  end
end
