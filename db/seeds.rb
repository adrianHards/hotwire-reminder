puts 'creating 5 tasks'

Task.create([
              { name: 'Buy Groceries' },

              { name: 'Play tennis' },

              { name: 'Do the Laundry' },

              { name: 'Use nesting with Turbo' },

              { name: 'Pay rent' }

            ])

puts "created #{Task.count} tasks"
