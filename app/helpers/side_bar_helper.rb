module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Сслыка без детей',
      :icon => 'list',
      :controller => :welcome, 
      :action => :index
    }

    # result << {
    #   :name => 'Списки авторов',
    #   :icon => 'list',
    #   :controller => :author_lists, 
    #   :action => :index
    # }
    # result << {
    #   :name => 'Авторы',
    #   :icon => 'list',
    #   :controller => :authors, 
    #   :action => :index
    # }
    result << {
      :name => 'Книги',
      :icon => 'book',
      :controller => :books, 
      :action => :index
    }
    # result << {
    #   :name => 'Залы',
    #   :icon => 'list',
    #   :controller => :halls, 
    #   :action => :index
    # }
    result << {
      :name => 'Стеллажи',
      :icon => 'inbox',
      :controller => :stillages, 
      :action => :index
    }
    result << {
      :name => 'Поиск',
      :icon => 'search',
      :controller => :books, 
      :action => :search
    }

    result << {
      :name => 'Администрирование',
      :icon => 'users',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'users',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :users, :action => :new,
       :icon => 'user-plus'},
      {:name => 'Роли',
       :controller => :roles, :action => :index,
       :icon => 'align-center',
       :class => 'long'},
    ]} 
    result << {
      :name => 'Заголовок ссылок',
      :icon => 'search-plus',
      :children => [
      {:name => 'Ссылка ребёнок',
       :controller => :welcome, :action => :index,
       :icon => 'binoculars'},
      {:name => 'Ссылка ребёнок',
       :controller => :welcome, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]} 
    result
  end
  
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users', 'roles'
      ctr.to_s == controller_name.to_s  
    else
      false
    end
  end
end
