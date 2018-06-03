class TranslateArticles < ActiveRecord::Migration[5.2]
  class Article < ActiveRecord::Base
   translates :headline, :content
  end

  def self.up
    I18n.with_locale(:sv) do
      Article.create_translation_table! headline: :text, content: :text
    end
  end

  def self.down
    Article.drop_translation_table!
  end
end
