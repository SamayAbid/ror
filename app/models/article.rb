class Article < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  belongs_to :publisher

  #before_update :change_article_title

  # #def change_article_title
  # 	title = self.title
  # 	title = title + "123"
  # 	update(title: title)
  # # end
end
