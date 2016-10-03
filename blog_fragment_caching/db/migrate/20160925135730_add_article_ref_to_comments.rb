class AddArticleRefToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :article, foreign_key: true
  end
end
