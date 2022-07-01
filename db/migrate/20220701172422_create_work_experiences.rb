class CreateWorkExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :work_experiences do |t|
      t.belongs_to :user
      t.string :company
      t.string :job_title
      t.text :description
      t.string :city
      t.date :started_on
      t.date :ended_on

      t.timestamps
    end
  end
end
