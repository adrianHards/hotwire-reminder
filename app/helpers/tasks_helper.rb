module TasksHelper
  def helper_greeting
    case Time.now.strftime('%H')
    when '00'..'11' then 'Good Morning ☕'
    when '12'..'17' then 'Good Afternoon'
    else 'Good Evening'
    end
  end
end

# <h2 class="text-2xl">
#   <%= "#{helper_greeting}" %>
# </h2>
