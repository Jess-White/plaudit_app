class CreateReferees < ActiveRecord::Migration[6.0]
  def change
    create_table :referees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :notes
      t.string :email

      t.timestamps
    end
  end
end
