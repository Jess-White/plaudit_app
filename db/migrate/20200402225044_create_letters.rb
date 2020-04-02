class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.integer :user_id
      t.integer :referee_id
      t.string :title
      t.text :recipient_info
      t.datetime :date
      t.text :section_background
      t.text :section_relationship
      t.text :section_strengths
      t.text :section_closer

      t.timestamps
    end
  end
end
