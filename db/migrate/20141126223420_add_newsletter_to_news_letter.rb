class AddNewsletterToNewsLetter < ActiveRecord::Migration
  def change
    add_column :news_letters, :newsletter, :string
  end
end
