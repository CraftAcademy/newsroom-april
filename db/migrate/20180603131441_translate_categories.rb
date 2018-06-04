class TranslateCategories < ActiveRecord::Migration[5.2]

  def self.up
    I18n.with_locale(:sv) do
      Category.create_translation_table! name: :string
    end
  end

  def self.down
    Category.drop_translation_table!
  end
end
