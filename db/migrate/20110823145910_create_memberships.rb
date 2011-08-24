class CreateMemberships < ActiveRecord::Migration
  def self.up
    create_table :memberships do |t|
      t.string :full_name
      t.string :gender
      t.string :dojo
      t.string :rank
      t.date :date_of_birth
      t.string :date_started
      t.string :weight
      t.string :height
      t.string :email
      t.string :contact
      t.string :name
      t.string :address
      t.string :contact1

      t.timestamps
    end
  end

  def self.down
    drop_table :memberships
  end
end
