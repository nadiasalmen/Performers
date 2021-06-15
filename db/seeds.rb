puts 'Cleaning database...'
ShowCategory.destroy_all
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

puts 'Creating show categories'
puts 'Creating show_category: Acústico'
show_category = ShowCategory.new(
  name: 'Acústico',
  description: 'Shows acústicos'
)
show_category.image.attach(io: File.open('app/assets/images/sc_acustico.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Magia'
show_category = ShowCategory.new(
  name: 'Magia',
  description: 'Shows de magia'
)
show_category.image.attach(io: File.open('app/assets/images/sc_magia.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Banda'
show_category = ShowCategory.new(
  name: 'Banda',
  description: 'Shows de bandas musicales'
)
show_category.image.attach(io: File.open('app/assets/images/sc_banda.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Infantil'
show_category = ShowCategory.new(
  name: 'Infantil',
  description: 'Shows infantil'
)
show_category.image.attach(io: File.open('app/assets/images/sc_infantil.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Amenización'
show_category = ShowCategory.new(
  name: 'Amenización',
  description: 'Amenizaciones'
)
show_category.image.attach(io: File.open('app/assets/images/sc_amenizacion.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Baile'
show_category = ShowCategory.new(
  name: 'Baile',
  description: 'Shows de baile'
)
show_category.image.attach(io: File.open('app/assets/images/sc_baile.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: DJ'
show_category = ShowCategory.new(
  name: 'DJ',
  description: 'DJs'
)
show_category.image.attach(io: File.open('app/assets/images/sc_dj.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Animación'
show_category = ShowCategory.new(
  name: 'Animación',
  description: 'Animaciones'
)
show_category.image.attach(io: File.open('app/assets/images/sc_animacion.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Stand Up'
show_category = ShowCategory.new(
  name: 'Stand Up',
  description: 'Shows de stand up'
)
show_category.image.attach(io: File.open('app/assets/images/sc_standup.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Otros'
show_category = ShowCategory.new(
  name: 'Otros',
  description: 'Otros tipos de shows'
)
show_category.image.attach(io: File.open('app/assets/images/sc_otros.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!
