puts 'creating 1 category'

all = Category.create({name: 'All'})

puts "created #{Category.count} category"

puts 'creating 7 tasks'

Task.create([
              { name: 'Buy Groceries', date: Time.new(2022, 8, 28), time: '08:00', category: all },

              { name: 'Play tennis', date: Time.new(2022, 10, 01), time: '10:00', category: all },

              { name: 'Do the Laundry', date: Time.new(2022, 8, 30), time: '10:00', category: all },

              { name: 'Practice Hotwire', date: Time.new(2022, 8, 25), time: '12:00', status: 1, category: all },

              { name: 'Pay rent', date: Time.new(2022, 8, 01), time: '07:00', status: 1, category: all },

              { name: 'TA at Le Wagon', date: Time.new(2022, 9, 16), time: '07:00', category: all },

              { name: 'Pay rent', date: Time.new(2022, 10, 01), time: '00:00', category: all }

            ])

puts "created #{Task.count} tasks, where #{Task.where(status: 1).count} are complete and the rest are incomplete"
