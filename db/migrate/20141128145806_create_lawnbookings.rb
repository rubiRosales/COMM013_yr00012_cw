class CreateLawnbookings < ActiveRecord::Migration
  def change
    create_table :lawnbookings do |t|
      t.integer :lawn_no
      t.date :booking_date

      t.timestamps
    end
  end
end
