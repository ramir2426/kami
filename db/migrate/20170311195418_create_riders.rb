class CreateRiders < ActiveRecord::Migration[5.0]
  def change
    create_table :riders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :gender
      t.integer :age
      t.string :qualification
      t.string :work_experience
      t.string :ice_number
      t.string :cnic
      t.string :driving_license
      t.string :reg_copy
      t.string :cv

      t.timestamps
    end
  end
end
