puts 'creating 5 tasks'

Task.create([
              { name: 'Buy Groceries', date: Time.new(2022, 8, 28), time: '08:00' },

              { name: 'Play tennis', date: Time.new(2022, 8, 28), time: '13:00' },

              { name: 'Do the Laundry', date: Time.new(2022, 8, 30), time: '10:00' },

              { name: 'Use nesting with Turbo', date: Time.new(2022, 8, 30), time: '12:00' },

              { name: 'Pay rent', date: Time.new(2022, 8, 29), time: '07:00' }

            ])

puts "created #{Task.count} tasks"
