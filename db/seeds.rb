# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.destroy_all
Tag.destroy_all
ArticlesTag.destroy_all

%w(おもしろ ネタ お笑い 食べ物 芸能人 オカルト 雑学).each do |tag_name|
  Tag.create(name: tag_name)
end

10.times do
  article = Article.create(title: Faker::Lorem.sentence(4),
                           body: Faker::Lorem.paragraphs(3).join("\n"))
  random_tags = Tag.find(Tag.pluck(:id).shuffle[0..2])
  article.tags << random_tags
end
