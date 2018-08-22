class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthdate
      t.string :photo_url
      t.references :profileable, polymorphic: true

      t.timestamps
    end
  end
end
