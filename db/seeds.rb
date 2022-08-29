puts 'creating 7 tasks'

Task.create([
              { name: 'Buy Groceries', date: Time.new(2022, 8, 28), time: '08:00' },

              { name: 'Play tennis', date: Time.new(2022, 10, 01), time: '10:00' },

              { name: 'Do the Laundry', date: Time.new(2022, 8, 30), time: '10:00' },

              { name: 'Practice Hotwire', date: Time.new(2022, 8, 25), time: '12:00', status: 1 },

              { name: 'Pay rent', date: Time.new(2022, 8, 01), time: '07:00', status: 1 },

              { name: 'TA at Le Wagon', date: Time.new(2022, 9, 16), time: '07:00' },

              { name: 'Pay rent', date: Time.new(2022, 10, 01) }

            ])

puts "created #{Task.count} tasks, where #{Task.where(status: 1).count} are complete and the rest are incomplete"
