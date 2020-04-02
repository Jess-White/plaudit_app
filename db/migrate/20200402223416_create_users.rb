class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :company_name
      t.string :company_address
      t.string :company_city
      t.string :company_zip
      t.string :email
      t.text :background

      t.timestamps
    end
  end
end
