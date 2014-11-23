class ArticlesTag < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag

  validates :article, uniqueness: { scope: :tag }
end
