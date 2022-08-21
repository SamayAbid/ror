module ArticlesHelper
  def article_date(article)
    article.created_at.to_date.strftime('%d/%m/%Y')
  end
end

# multiple tags concatenation
