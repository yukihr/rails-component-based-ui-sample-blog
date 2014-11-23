class Article < ActiveRecord::Base
  has_many :articles_tags
  has_many :tags, through: :articles_tags
end
