class ArticleIndex
  include SearchFlip::Index

  def self.index_name
    "articles"
  end

  def self.model
    Article
  end

  def self.serialize(article)
    {
      id: article.id,
      title: article.title,
      body: article.body
     }
  end
end
