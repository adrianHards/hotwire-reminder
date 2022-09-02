puts 'creating 4 categories'

Category.create([
  { name: 'Home', emoji: '🏠' },

  { name: 'Work', emoji: '👨‍💻' },

  { name: 'Social', emoji: '🧉' },

  { name: 'Groceries', emoji: '🍏' },

])

puts "created #{Category.count} categories"

puts "for example: #{Category.first.name}, #{Category.first.emoji}"

puts 'creating 7 tasks'

Task.create([
              { name: 'Buy apples', date: Time.new(2022, 8, 28), time: '08:00', category: Category.first  },

              { name: 'Play tennis', date: Time.new(2022, 10, 01), time: '10:00', category: Category.find(3) },

              { name: 'Do the laundry', date: Time.new(2022, 8, 30), time: '10:00', category: Category.first },

              { name: 'Practice Hotwire', date: Time.new(2022, 8, 25), time: '12:00', status: '1' },

              { name: 'Pay rent', date: Time.new(2022, 8, 01), time: '07:00', status: 1 },

              { name: 'TA at Le Wagon', date: Time.new(2022, 9, 16), time: '07:00', category: Category.find(2) },

              { name: 'Pay rent', date: Time.new(2022, 10, 01), time: '00:00' }

            ])

puts "created #{Task.count} tasks, where #{Task.where(status: 1).count} are complete and the rest are incomplete"