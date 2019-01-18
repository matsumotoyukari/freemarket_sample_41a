crumb :root do
  link "メルカリ", root_path
end

# user#new
crumb :new_user do
  link "aaa", new_user_path
end

crumb :users_index do
  link "マイページ", users_path
end



crumb :category do |category|
  link category.name, category_index_path
  # parent :root
end


crumb :show_user do |user|
  link user.name, users_path
end
