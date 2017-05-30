module AuthorsHelper
  def author_options()
    Author.all.pluck('index_of_author, id')
  end
end
