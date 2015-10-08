class CreatePresidentsTable < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :president_number
      t.string :name
      t.integer :birth_year
      t.integer :death_year
      t.date :took_office
      t.date :left_office
      t.string :party
      t.string :home_state
    end
  end
end
