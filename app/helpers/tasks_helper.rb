module TasksHelper
  def helperGreeting
    case Time.now.strftime('%H')
    when '00'..'11' then 'Good Morning ☕'
    when '12'..'17' then 'Good Afternoon'
    else 'Good Evening'
    end
  end
end
