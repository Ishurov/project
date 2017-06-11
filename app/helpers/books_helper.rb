module BooksHelper
  def link_to_remove_author_from_list(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_author_list') do 
      fa_icon('times', title: 'Удалить автора из списка') + ' Удалить'      
    end
  end

  def link_to_remove_author(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_author') do 
      fa_icon('times', title: 'Удалить автора') + ' Удалить автора'      
    end
  end

  def link_to_add_author(form, book)
    new_obj = AuthorList.new()
    fld = form.fields_for(:author_lists, new_obj, 
      :child_index => 'new_author_list') do |df|
      render('author_list_form', df: df, i: 'Новый автор')
    end
    link_to(?#, class: 'btn btn-info', 
        id: 'add_author_link', data: {content: "#{fld}"}) do 
      fa_icon("plus") + " Новый автор" 
    end
  end

  def author_options(bk)
    arr = Author.all.collect{|t| 
      if !(t.books.include?(bk))
        [t.index.to_s + " " + t.last_name + " " + t.first_name + " " + t.second_name, t.id]
      end 
    }
    arr.compact!
    arr
  end
end
