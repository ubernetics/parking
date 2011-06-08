class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.integer :folio
      t.string :licenseplate
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
