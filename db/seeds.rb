puts 'creating 5 tasks'

Task.create([
              { name: 'Buy Groceries', date: Time.new(2022, 8, 28), time: '08:00' },

              { name: 'Play tennis', date: Time.new(2022, 8, 28), time: Time.new(2022, 8, 28, 8, 0, 0).strftime('%H:%M') },

              { name: 'Do the Laundry', date: Time.new(2022, 8, 28), time: Time.new(2022, 8, 28, 8, 0, 0).strftime('%H:%M') },

              { name: 'Use nesting with Turbo', date: Time.new(2022, 8, 28), time: Time.new(2022, 8, 28, 8, 0, 0).strftime('%H:%M') },

              { name: 'Pay rent', date: Time.new(2022, 8, 28), time: Time.new(2022, 8, 28, 8, 0, 0).strftime('%H:%M') }

            ])

puts "created #{Task.count} tasks"
