crumb :root do
  link "メルカリ", root_path
end

crumb :users_index do
  link "マイページ", users_path
end

crumb :category_index do
  link "カテゴリー一覧", category_index_path
  parent :root
end

crumb :rootcategory do |root|
  link root.name, category_path(id: root.id)
  parent :category_index
end

crumb :childcategory do |child|
  link child.name, category_path(id: child.id)
  parent :rootcategory,child.parent
end

crumb :soncategory do |son|
  link son.name, category_path(id: son.id)
  parent :childcategory,son.parent
end

crumb :product do |product|
  link product.name, product_path
  parent :root
end
