class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :full_name, default: ""
      t.string :bio, default: ""
      t.string :gender, default: ""
      t.integer :phone, default: ""
      t.datetime :dob, default: ""
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
