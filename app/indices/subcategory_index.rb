class SubcategoryIndex
  include SearchFlip::Index

  def self.index_name
    "subcategories"
  end

  def self.model
    Subcategory
  end

  def self.serialize(subcategory)
    {
      id: subcategory.id,
      title: subcategory.title,
      text: subcategory.text,
     }
  end
end
