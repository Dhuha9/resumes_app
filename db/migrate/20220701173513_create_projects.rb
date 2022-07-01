class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.belongs_to :user
      t.string :company
      t.string :title
      t.text :description
      t.date :started_on
      t.date :ended_on

      t.timestamps
    end
  end
end
