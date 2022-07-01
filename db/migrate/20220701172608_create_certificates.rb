class CreateCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :certificates do |t|
      t.belongs_to :user
      t.string :title
      t.string :issued_by
      t.text :description
      t.date :started_on
      t.date :ended_on

      t.timestamps
    end
  end
end
