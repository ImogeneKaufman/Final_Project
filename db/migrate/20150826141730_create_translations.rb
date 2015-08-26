class CreateTranslations < ActiveRecord::Migration
  def up
    create_table :translations do |t|
      t.string :user_id
      t.string :original_text
      t.string :final_text
      t.string :original_language
      t.string :final_language
  end
  end 
  def down
    drop_table :translations
  end 
end
  
