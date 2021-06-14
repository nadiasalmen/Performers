require "open-uri"

puts 'Cleaning database...'
EventCategory.destroy_all


puts 'Creating event categories'
puts 'Creating event_category: Bar - Restó'
event_category = EventCategory.new(
  name: 'Bar - Restó',
  description: 'Eventos públicos o privados en bares y restaurants'
)
event_category.image.attach(io: File.open('app/assets/images/ec_bar.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!
puts 'Creating event_category: Social'
event_category = EventCategory.new(
  name: 'Social',
  description: 'Eventos sociales públicos o privados'
)
event_category.image.attach(io: File.open('app/assets/images/ec_social.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!
puts 'Creating event_category: Corporativo'
event_category = EventCategory.new(
  name: 'Corporativo',
  description: 'Eventos corporativos privados'
)
event_category.image.attach(io: File.open('app/assets/images/ec_corporativo.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!
puts 'Creating event_category: Evento Cultural'
event_category = EventCategory.new(
  name: 'Evento Cultural',
  description: 'Eventos culturales'
)
event_category.image.attach(io: File.open('app/assets/images/ec_teatro.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!
puts 'Creating event_category: Otros'
event_category = EventCategory.new(
  name: 'Otros',
  description: 'Otros eventos'
)
event_category.image.attach(io: File.open('app/assets/images/ec_otros.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!
