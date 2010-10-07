class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :salutation
      t.string :name
      t.string :lastname
      t.string :company
      t.string :country
      t.string :email
      t.string :phone
      t.string :gsm
      t.string :fax
      t.string :subject
      t.text :message
      t.boolean :callback
      t.boolean :appointement

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
