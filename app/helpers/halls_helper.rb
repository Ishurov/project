module HallsHelper
  def hall_options()
    Hall.all.map{|c| [c.full_name+'('+c.short_name+')', c.id ]}
  end
end
