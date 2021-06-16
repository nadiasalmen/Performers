puts 'CLEANING DATABASE'
puts 'Deleting users'
User.destroy_all
puts 'Deleting tags'
Tag.destroy_all
puts 'Deleting show_categories'
ShowCategory.destroy_all
puts 'Deleting event_categories'
EventCategory.destroy_all

puts 'CREATING EVENT CATEGORIES'
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

puts 'CREATING SHOW CATEGORIES'
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

puts 'CREATING TAGS'
TAGS = ['Tango', 'Tango Electrónico', 'Tango Fusión', 'Magia', 'Ilusión', 'Asombro', 'Intrépido', 'Atrevido', 'Diferente', 'House', 'Rock', 'Indie', 'Rap', 'Energía', 'Baile', 'Comedia', 'Entretenimiento', 'Show humorístico', 'Standup']
TAGS.each { |tag_name| Tag.new(name: tag_name) }

puts 'CREATING USERS'
puts 'Creating user: Gato Maula Project'
user = User.new(
  email: 'gatomaulaproject@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Gato Maula Project',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Rama Grin'
user = User.new(
  email: 'ramagrin@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Rama Grin',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Señores Vuelan'
user = User.new(
  email: 'señoresvuelan@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Señores Vuelan',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Cuarteto Aureo'
user = User.new(
  email: 'cuartetoaureo@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Cuarteto Aureo',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Mimo Beto'
user = User.new(
  email: 'mimobeto@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Mimo Beto',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: John Sombriyon'
user = User.new(
  email: 'johnsombriyon@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'John Sombriyon',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Fiocchi'
user = User.new(
  email: 'fiocchi@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Fiocchi',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Pizzicatti Tango'
user = User.new(
  email: 'pizzicattitango@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Pizzicatti Tango',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: XPiral'
user = User.new(
  email: 'xpiral@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Xpiral',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating user: Krishna MFF'
user = User.new(
  email: 'krishnamff@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Krishna MFF',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts "Creating user: Carlito's Stand Up"
user = User.new(
  email: 'carlitosstandup@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: "Carlito's Stand Up",
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/logo_definitivo-solo-p.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!
