class CreateNewsLetters < ActiveRecord::Migration
  def change
    create_table :news_letters do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
