class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :issue_id
      t.string :issue_description

      t.timestamps null: false
    end
  end
end
