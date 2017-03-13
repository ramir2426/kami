class CreateSalesmen < ActiveRecord::Migration[5.0]
  def change
    create_table :salesmen do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :gender
      t.integer :age
      t.string :qualification
      t.string :work_experience
      t.string :cv
      t.integer :job_type

      t.timestamps
    end
  end
end
