class CreateRecipients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :referee_id

      t.timestamps
    end
  end
end
