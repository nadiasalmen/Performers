require "open-uri"

puts '------------------------'
puts 'CLEANING DATABASE'
puts '------------------------'
puts 'Deleting show_tags'
ShowTag.destroy_all
puts 'Deleting shows'
Show.destroy_all
puts 'Deleting users'
User.destroy_all
puts 'Deleting tags'
Tag.destroy_all
puts 'Deleting show_categories'
ShowCategory.destroy_all
puts 'Deleting event_categories'
EventCategory.destroy_all

puts '------------------------'
puts 'CREATING EVENT CATEGORIES'
puts '------------------------'
puts 'Creating event_category: Bar - Restó'
event_category = EventCategory.new(
  name: 'Bar - Restó',
  description: 'Eventos públicos o privados en bares y restaurants'
)
event_category.image.attach(io: File.open('app/assets/images/seeds_event_categories/ec_bar.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!

puts 'Creating event_category: Social'
event_category = EventCategory.new(
  name: 'Social',
  description: 'Eventos sociales públicos o privados'
)
event_category.image.attach(io: File.open('app/assets/images/seeds_event_categories/ec_social.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!

puts 'Creating event_category: Corporativo'
event_category = EventCategory.new(
  name: 'Corporativo',
  description: 'Eventos corporativos privados'
)
event_category.image.attach(io: File.open('app/assets/images/seeds_event_categories/ec_corporativo.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!

puts 'Creating event_category: Evento Cultural'
event_category = EventCategory.new(
  name: 'Evento Cultural',
  description: 'Eventos culturales'
)
event_category.image.attach(io: File.open('app/assets/images/seeds_event_categories/ec_teatro.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!

puts 'Creating event_category: Otros'
event_category = EventCategory.new(
  name: 'Otros',
  description: 'Otros eventos'
)
event_category.image.attach(io: File.open('app/assets/images/seeds_event_categories/ec_otros.png'), filename: "#{event_category.name}.png", content_type: 'image/png')
event_category.save!

puts '------------------------'
puts 'CREATING SHOW CATEGORIES'
puts '------------------------'
puts 'Creating show_category: Acústico'
show_category = ShowCategory.new(
  name: 'Acústico',
  description: 'Shows acústicos'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_acustico.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Magia'
show_category = ShowCategory.new(
  name: 'Magia',
  description: 'Shows de magia'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_magia.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Banda'
show_category = ShowCategory.new(
  name: 'Banda',
  description: 'Shows de bandas musicales'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_banda.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Infantil'
show_category = ShowCategory.new(
  name: 'Infantil',
  description: 'Shows infantil'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_infantil.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Amenización'
show_category = ShowCategory.new(
  name: 'Amenización',
  description: 'Amenizaciones'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_amenizacion.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Baile'
show_category = ShowCategory.new(
  name: 'Baile',
  description: 'Shows de baile'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_baile.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: DJ'
show_category = ShowCategory.new(
  name: 'DJ',
  description: 'DJs'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_dj.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Animación'
show_category = ShowCategory.new(
  name: 'Animación',
  description: 'Animaciones'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_animacion.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Stand Up'
show_category = ShowCategory.new(
  name: 'Stand Up',
  description: 'Shows de stand up'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_standup.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts 'Creating show_category: Otros'
show_category = ShowCategory.new(
  name: 'Otros',
  description: 'Otros tipos de shows'
)
show_category.image.attach(io: File.open('app/assets/images/seeds_show_categories/sc_otros.png'), filename: "#{show_category.name}.png", content_type: 'image/png')
show_category.save!

puts '------------------------'
puts 'CREATING TAGS'
puts '------------------------'
TAGS = ['Tango', 'Tango Electrónico', 'Tango Fusión', 'Magia', 'Ilusión', 'Asombro', 'Intrépido', 'Atrevido', 'Diferente', 'House', 'Rock', 'Indie', 'Rap', 'Energía', 'Baile', 'Comedia', 'Entretenimiento', 'Show Humorístico', 'Stand Up', 'Fanky', 'Electrónica', 'Pop']
TAGS.each { |tag_name| Tag.create!(name: tag_name) }

puts '------------------------'
puts 'CREATING USERS, SHOWS & SHOW_TAGS'
puts '------------------------'
puts 'Creating user: Gato Maula Project'
user = User.new(
  email: 'gatomaulaproject@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Gato Maula Project',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_gato_maula/gmp4.jpg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: Gato Maula Project for user: Gato Maula Project'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Banda').first.id,
  name: 'Gato Maula Project',
  description: "Gato Maula Project propone una búsqueda experimental tomando al tango como columna vertebral para luego fusionarlo con diferentes estilos musicales como el rock, el jazz, el soul, la electrónica o el hip hop. Fundado en 2012 cuenta con dos discos de estudio y un EP editados: “Siete Vidas” (2013), “Bailarín” (2016) y “Sin Despedidas” (2020). Cuenta con giras internacionales (México y Uruguay) y presencia regular en festivales locales. Además han recorrido las ciudades más importantes del país mostrando su repertorio."
)
show.images.attach(io: File.open('app/assets/images/seeds_gato_maula/gmp1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_gato_maula/gmp2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_gato_maula/gmp3.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_gato_maula/gmp4.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: Gato Maula Project'
ShowTag.create!(tag_id: Tag.where(name: 'Tango').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Tango Electrónico').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Tango Fusión').first.id, show: show)

puts '------------------------'

puts 'Creating user: Rama Grin'
user = User.new(
  email: 'ramagrin@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Rama Grin',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_rama_grin/ramagrin3.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: Rama Grin for user: Rama Grin'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Magia').first.id,
  name: 'Rama Grin',
  description: "Sorprendete de cerca con modalidad close up en un show exclusivo para 10 personas o en modalidad escenario para mas. ¿Te animás a asombrarte? Consultar por otras opciones y modalidades por privado, armamos tu show a medida."
)
show.images.attach(io: File.open('app/assets/images/seeds_rama_grin/ramagrin1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_rama_grin/ramagrin2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_rama_grin/ramagrin3.png'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: Rama Grin'
ShowTag.create!(tag_id: Tag.where(name: 'Magia').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Ilusión').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Asombro').first.id, show: show)

puts '------------------------'

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

puts '------------------------'

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

puts '------------------------'

puts 'Creating user: Mimo Beto'
user = User.new(
  email: 'mimobeto@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Mimo Beto',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_mimo_beto/beto5.jpeg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts '------------------------'

puts 'Creating user: John Sombriyon'
user = User.new(
  email: 'johnsombriyon@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'John Sombriyon',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_john_sombriyon/john1.jpg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: John Sombriyon for user: John Sombriyon'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Otros').first.id,
  name: 'John Sombriyon',
  description: "El número de Sombriyon Llantas Hula consiste en manipular diferentes objetos a la vez mientras cuenta una historia demostrando habilidades sobre su bicicleta y sorprendiendo a su público. Intrépido, atrevido y diferente."
)
show.images.attach(io: File.open('app/assets/images/seeds_john_sombriyon/john1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_john_sombriyon/john2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_john_sombriyon/john3.png'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: John Sombriyon'
ShowTag.create!(tag_id: Tag.where(name: 'Intrépido').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Atrevido').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Diferente').first.id, show: show)

puts '------------------------'

puts 'Creating user: Fiocchi'
user = User.new(
  email: 'fiocchi@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Fiocchi',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_fiocchi/fiocchi2.jpg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: Fiocchi for user: Fiocchi'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'DJ').first.id,
  name: 'Fiocchi',
  description: "Fiocchi es un dúo rosarino de DJs de música electrónica. Ofrece una propuesta fresca y divertida para tódo tipo de público. Con influencias del funky house presentan un show en el que la electrónica no es el fin, sino un medio para disfrutar de grandes clásicos de la música."
)
show.images.attach(io: File.open('app/assets/images/seeds_fiocchi/fiocchi1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_fiocchi/fiocchi2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_fiocchi/fiocchi3.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_fiocchi/fiocchi4.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: Fiocchi'
ShowTag.create!(tag_id: Tag.where(name: 'House').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Fanky').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Electrónica').first.id, show: show)

puts '------------------------'

puts 'Creating user: Pizzicatti Tango'
user = User.new(
  email: 'pizzicattitango@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Pizzicatti Tango',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi6.jpg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: Pizzicatti for user: Pizzicatti'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Banda').first.id,
  name: 'Pizzicatti',
  description: "Joaquin Vivo - Violín\nDiego Saavedra - bandoneón\nLeonel Lúquez - pianno\nClaudio Pizzicati - contrabajo - dirección y producción\nRespetamos los estilos de la época de oro del tango. Mantener vivo un estilo definido y damos una impronta con el carácter que merece cada interpretación. La identidad y sonido propio da como resultado la tradición del Tango rosarino."
)
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi3.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi4.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi5.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi6.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi7.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi8.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi9.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi10.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_pizzicanti/pizzi11.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: Pizzicatti'
ShowTag.create!(tag_id: Tag.where(name: 'Tango').first.id, show: show)

puts '------------------------'

puts 'Creating user: XPiral'
user = User.new(
  email: 'xpiral@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Xpiral',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_xpiral/xpiral2.png'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: Xpiral for user: Xpiral'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Banda').first.id,
  name: 'Xpiral',
  description: "Xpiral da un show musical de pop rock muy bailable y entretenido. Ya sea en formato acustico o con banda nuestro publico disfruta las canciones tanto de pie como sentado.  Tambien ofrecemos un streaming de buena calidad ya que los integrantes tambien tenemos nuestro desempeño en artes audiovisuales."
)
show.images.attach(io: File.open('app/assets/images/seeds_xpiral/xpiral1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_xpiral/xpiral2.png'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_xpiral/xpiral3.png'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: Xpiral'
ShowTag.create!(tag_id: Tag.where(name: 'Pop').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Rock').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Indie').first.id, show: show)

puts '------------------------'

puts 'Creating user: Krishna MFF'
user = User.new(
  email: 'krishnamff@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: 'Krishna MFF',
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_krishna_mff/krishna3.jpg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts 'Creating show: Krishna MFF for user: Krishna MFF'
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Banda').first.id,
  name: 'Krishna MFF',
  description: "KRISHNA es el resultado de una combinación explosiva de géneros. Con componentes del rock, del pop y del funk, y con las letras rapeadas como leitmotiv, busca generar en el espectador una inyección de energía. ¡A bailar y moverse!"
)
show.images.attach(io: File.open('app/assets/images/seeds_krishna_mff/krishna1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_krishna_mff/krishna2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_krishna_mff/krishna3.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: KRISHNA'
ShowTag.create!(tag_id: Tag.where(name: 'Rap').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Energía').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Baile').first.id, show: show)

puts '------------------------'

puts "Creating user: Carlito's Stand Up"
user = User.new(
  email: 'carlitosstandup@gmail.com',
  password: 'Performers2021++',
  role: 'Performer',
  full_name: "Carlito's Stand Up",
  phone_number: '+5493415854032',
  news: true,
)
user.avatar.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos3.jpg'), filename: "#{user.full_name}.png", content_type: 'image/png')
user.save!

puts "Creating show: Carlito's Stand Up for user: Carlito's Stand Up"
show = Show.new(
  user: user,
  show_category_id: ShowCategory.where(name: 'Stand Up').first.id,
  name: "Carlito's Stand Up",
  description: "Carlito's Stand Up es un show de comedia de una duración de 60 a 90 minutos. Una selección de comediantes realizan sus monólogos cómicos de observación frente al público. Cada cómico tiene un estilo de humor ajustable a cada tipo de público y apuntando al target de cada evento, se eligen los comediantes acordes para este. Carlito's stand up funciona desde el 2018 en la ciudad de Rosario con más de 100 presentaciones en bares de la ciudad y alrededores."
)
show.images.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos1.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos2.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos3.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos4.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos5.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.images.attach(io: File.open('app/assets/images/seeds_carlitos_standup/carlitos6.jpg'), filename: "#{show.name}.png", content_type: 'image/png')
show.save!

puts 'Creating show_tags for show: Carlitos Stand Up'
ShowTag.create!(tag_id: Tag.where(name: 'Comedia').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Entretenimiento').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Show Humorístico').first.id, show: show)
ShowTag.create!(tag_id: Tag.where(name: 'Stand Up').first.id, show: show)
