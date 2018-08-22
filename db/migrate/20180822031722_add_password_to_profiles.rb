class AddPasswordToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :password, :string
  end
end
