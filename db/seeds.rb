# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(email: 'student@example.com', password: 'Password1', role: :student, first_name: 'Anna', last_name: 'Nowak', gender: :woman, phone_number: '756134825', address: 'Piastowska 26/9, Wrocław')
User.create!(email: 'student1@example.com', password: 'Password1', role: :student, first_name: 'Bartek', last_name: 'Kowalski', gender: :man, phone_number: '793564728', address: 'Władysława Reymonta 4/5, Wrocław')
User.create!(email: 'student2@example.com', password: 'Password1', role: :student, first_name: 'Ewa', last_name: 'Wiśniewska', gender: :woman, phone_number: '785293461', address: 'Kazimierza Wielkiego 10/7, Wrocław')
User.create!(email: 'student3@example.com', password: 'Password1', role: :student, first_name: 'Michał', last_name: 'Zieliński', gender: :man, phone_number: '694823475', address: 'Oławska 15/6, Wrocław')
User.create!(email: 'student4@example.com', password: 'Password1', role: :student, first_name: 'Katarzyna', last_name: 'Lewandowska', gender: :woman, phone_number: '752164389', address: 'Hallera 2/10, Wrocław')
User.create!(email: 'student5@example.com', password: 'Password1', role: :student, first_name: 'Jakub', last_name: 'Woźniak', gender: :man, phone_number: '698452317', address: 'Powstańców Śląskich 34/12, Wrocław')
User.create!(email: 'student6@example.com', password: 'Password1', role: :student, first_name: 'Agnieszka', last_name: 'Dąbrowska', gender: :woman, phone_number: '764852139', address: 'Świdnicka 45/9, Wrocław')
User.create!(email: 'student7@example.com', password: 'Password1', role: :student, first_name: 'Marcin', last_name: 'Nowicki', gender: :man, phone_number: '695273461', address: 'Krzywoustego 13/3, Wrocław')
User.create!(email: 'student8@example.com', password: 'Password1', role: :student, first_name: 'Sylwia', last_name: 'Grabowska', gender: :woman, phone_number: '792136475', address: 'Długa 5/2, Wrocław')
User.create!(email: 'student9@example.com', password: 'Password1', role: :student, first_name: 'Tomasz', last_name: 'Zawadzki', gender: :man, phone_number: '681294753', address: 'Legnicka 7/8, Wrocław')
User.create!(email: 'student10@example.com', password: 'Password1', role: :student, first_name: 'Monika', last_name: 'Michalska', gender: :woman, phone_number: '784596132', address: 'Grabiszyńska 11/4, Wrocław')
User.create!(email: 'student11@example.com', password: 'Password1', role: :student, first_name: 'Łukasz', last_name: 'Sikorski', gender: :man, phone_number: '721956842', address: 'Żmigrodzka 3/2, Wrocław')
User.create!(email: 'student12@example.com', password: 'Password1', role: :student, first_name: 'Magdalena', last_name: 'Kubiak', gender: :woman, phone_number: '786453721', address: 'Plac Grunwaldzki 6/7, Wrocław')
User.create!(email: 'student13@example.com', password: 'Password1', role: :student, first_name: 'Piotr', last_name: 'Ostrowski', gender: :man, phone_number: '694213587', address: 'Bolesława Chrobrego 8/9, Wrocław')
User.create!(email: 'student14@example.com', password: 'Password1', role: :student, first_name: 'Zuzanna', last_name: 'Górska', gender: :woman, phone_number: '792453681', address: 'Huby 14/6, Wrocław')
User.create!(email: 'student15@example.com', password: 'Password1', role: :student, first_name: 'Kamil', last_name: 'Czarnecki', gender: :man, phone_number: '682954731', address: 'Partyzantów 20/3, Wrocław')
User.create!(email: 'student16@example.com', password: 'Password1', role: :student, first_name: 'Natalia', last_name: 'Pawlak', gender: :woman, phone_number: '792134658', address: 'Psie Budy 2/1, Wrocław')
User.create!(email: 'student17@example.com', password: 'Password1', role: :student, first_name: 'Adrian', last_name: 'Lis', gender: :man, phone_number: '691382467', address: 'Traugutta 30/5, Wrocław')
User.create!(email: 'student18@example.com', password: 'Password1', role: :student, first_name: 'Weronika', last_name: 'Szymańska', gender: :woman, phone_number: '781295634', address: 'Gajowicka 19/8, Wrocław')
User.create!(email: 'student19@example.com', password: 'Password1', role: :student, first_name: 'Rafał', last_name: 'Bielawski', gender: :man, phone_number: '671294386', address: 'Jana Pawła II 22/10, Wrocław')

User.create!(email: 'teacher@example.com', password: 'Password1', role: :teacher, first_name: 'Zenon', last_name: 'Kowalski', gender: :man, phone_number: '123456789', address: 'Sienkiewicza 6/19, Wrocław', description: 'Zenon Kowalski to doświadczony instruktor tańca towarzyskiego i klasycznego. Specjalizuje się w walcu angielskim, tangu oraz quickstepie. Prowadzi również zajęcia z podstawowych technik dla początkujących.')
User.create!(email: 'teacher1@example.com', password: 'Password1', role: :teacher, first_name: 'Stanisław', last_name: 'Malarski', gender: :man, phone_number: '987654321', address: 'Śliczna 6/4, Wrocław', description: 'Stanisław Malarski to pasjonat tańców latynoamerykańskich. Prowadzi kursy salsy, bachaty i cha-chy dla różnych poziomów zaawansowania. Znany jest z energicznego stylu i indywidualnego podejścia do każdego uczestnika.')
User.create!(email: 'teacher2@example.com', password: 'Password1', role: :teacher, first_name: 'Anna', last_name: 'Nowicka', gender: :woman, phone_number: '456789123', address: 'Kościuszki 20/3, Kraków', description: 'Anna Nowicka specjalizuje się w technice tańca współczesnego i jazzowego. Prowadzi warsztaty dla osób na każdym poziomie zaawansowania, kładąc nacisk na wyraz artystyczny i kreatywność.')
User.create!(email: 'teacher3@example.com', password: 'Password1', role: :teacher, first_name: 'Ewa', last_name: 'Michalska', gender: :woman, phone_number: '321654987', address: 'Grunwaldzka 12, Poznań', description: 'Ewa Michalska to instruktorka baletu z wieloletnim doświadczeniem. Jej zajęcia pomagają poprawić postawę, elastyczność i płynność ruchów. Prowadzi również kursy baletu dla dorosłych.')
User.create!(email: 'teacher4@example.com', password: 'Password1', role: :teacher, first_name: 'Marek', last_name: 'Zieliński', gender: :man, phone_number: '654987321', address: 'Warszawska 45, Warszawa', description: 'Marek Zieliński jest specjalistą od tańców użytkowych, w tym disco fox i rock and roll. Jego zajęcia są pełne energii i dostosowane do osób o różnym poziomie umiejętności.')
User.create!(email: 'teacher5@example.com', password: 'Password1', role: :teacher, first_name: 'Katarzyna', last_name: 'Borkowska', gender: :woman, phone_number: '147852369', address: 'Długa 10, Gdańsk', description: 'Katarzyna Borkowska prowadzi kursy tańców weselnych, w tym walca wiedeńskiego i poloneza. Jej zajęcia cieszą się dużą popularnością wśród narzeczonych.')
User.create!(email: 'teacher6@example.com', password: 'Password1', role: :teacher, first_name: 'Piotr', last_name: 'Majewski', gender: :man, phone_number: '963852741', address: 'Plac Wolności 7, Łódź', description: 'Piotr Majewski specjalizuje się w tańcach latynoamerykańskich, takich jak rumba i samba. Jego zajęcia są pełne energii i skupiają się na technice oraz wyrazistości.')
User.create!(email: 'teacher7@example.com', password: 'Password1', role: :teacher, first_name: 'Joanna', last_name: 'Krawczyk', gender: :woman, phone_number: '852963741', address: 'Świętokrzyska 15, Lublin', description: 'Joanna Krawczyk prowadzi kursy tańca klasycznego i narodowego, w tym poloneza i mazura. Jej zajęcia to doskonały wybór dla osób zainteresowanych tradycyjnymi formami tanecznymi.')
User.create!(email: 'teacher8@example.com', password: 'Password1', role: :teacher, first_name: 'Adam', last_name: 'Wiśniewski', gender: :man, phone_number: '789456123', address: 'Lipowa 8, Katowice', description: 'Adam Wiśniewski prowadzi zajęcia z hip-hopu i tańca nowoczesnego. Specjalizuje się w choreografii i rozwijaniu indywidualnego stylu uczestników.')
User.create!(email: 'teacher9@example.com', password: 'Password1', role: :teacher, first_name: 'Magdalena', last_name: 'Sobczak', gender: :woman, phone_number: '963741852', address: 'Słoneczna 23, Szczecin', description: 'Magdalena Sobczak oferuje indywidualne lekcje tańca dla par, skupiając się na doskonaleniu techniki i tworzeniu spersonalizowanych choreografii.')      
User.create!(email: 'admin@example.com', password: 'Password1', role: :admin, first_name: 'Renata', last_name: 'Klucz', gender: :woman, phone_number: '658864542', address: 'Kołątaja 45/1 Wrocław')

course_names = [
  "Taniec użytkowy", "Taniec towarzyski", "Zumba", 
  "Hip-hop", "Balet dla dorosłych", "Salsa", 
  "Tango", "Tańce latynoamerykańskie", "Modern Jazz", 
  "Tańce klasyczne"
]

course_descriptions = [
  "Kurs tańca użytkowego idealny na wesela i inne imprezy. Nauczysz się podstawowych kroków i płynności ruchów. Nie wymaga wcześniejszego doświadczenia. Doskonały wybór dla par i osób indywidualnych. Zajęcia odbywają się w przyjaznej atmosferze.",
  "Taniec towarzyski to klasyka, która nigdy nie wychodzi z mody. Poznaj walca, fokstrota i quickstepa. Kurs dedykowany zarówno początkującym, jak i średnio zaawansowanym. Rozwój techniki i umiejętności w rytmie eleganckiej muzyki. Wyjątkowa okazja do spędzenia czasu w ruchu.",
  "Zumba to idealne połączenie tańca i fitnessu. Spalaj kalorie przy rytmach latynoskiej muzyki. Zajęcia pełne energii i radości, które poprawią Twoją kondycję. Niezależnie od poziomu sprawności – każdy znajdzie tu coś dla siebie. Dołącz do grupy i baw się, jednocześnie dbając o zdrowie.",
  "Hip-hop to kurs dla osób, które kochają dynamiczne i nowoczesne style. Naucz się podstawowych ruchów i choreografii. Ćwiczenia poprawiają koordynację i wyrażanie siebie przez taniec. Idealne dla młodzieży i dorosłych lubiących muzykę uliczną. Profesjonalni instruktorzy pomogą Ci rozwinąć swój talent.",
  "Balet dla dorosłych to piękno i gracja w każdym ruchu. Zajęcia poprawią postawę i elastyczność ciała. Nauczysz się podstawowych pozycji i płynności w ruchach. Kurs dostosowany do początkujących, niezależnie od wieku. Atmosfera elegancji i wyciszenia.",
  "Salsa to rytmiczny i zmysłowy taniec pochodzący z Karaibów. Naucz się podstawowych kroków i improwizacji na parkiecie. Doskonała zabawa w parach, ale także dla osób solo. Poprawisz kondycję i poczujesz energię tropikalnych rytmów. Instruktorzy z pasją zadbają o Twój rozwój.",
  "Tango to taniec pełen pasji i emocji. Poznaj podstawowe kroki i naucz się improwizacji. Kurs rozwija zmysłowość i elegancję w ruchach. Idealny dla par, które chcą dodać romantyzmu do swojego życia. Zajęcia odbywają się w kameralnej atmosferze.",
  "Tańce latynoamerykańskie to wybuch energii i radości. Naucz się salsy, cha-chy, rumby i innych stylów. Doskonałe ćwiczenie kondycji i wyrażania emocji przez taniec. Profesjonalni instruktorzy wprowadzą Cię w świat latynoskiej kultury. Zajęcia idealne dla osób, które chcą poczuć gorący klimat.",
  "Modern Jazz łączy taniec klasyczny z nowoczesnym wyrazem. Naucz się płynności ruchów i wyrażania emocji. Kurs dostosowany dla początkujących i średnio zaawansowanych. Poprawisz swoją elastyczność i wyrazistość na scenie. Zajęcia odbywają się w kreatywnej i wspierającej atmosferze.",
  "Tańce klasyczne to podróż do świata elegancji i tradycji. Nauczysz się walca, poloneza i innych stylów. Zajęcia rozwijają technikę i umiejętność poruszania się z gracją. Idealne dla osób ceniących kulturę i piękno ruchu. Profesjonalna kadra zadba o Twoje postępy."
]

instructor_ids = (21..30).to_a

start_date = DateTime.new(2024, 11, 20, 18, 0)

course_names.each_with_index do |name, index|
  day_offset = index % 7 
  course_start_date = start_date + index.weeks + day_offset.days
  weekday = course_start_date.wday

  course = Course.create!(
    name: name,
    start_date: course_start_date,
    instructor_id: instructor_ids[index % instructor_ids.size],
    is_pair: [true, false].sample,
    number_of_place: 10 + index,
    number_of_lessons: rand(10..20),
    level: rand(1..3),
    weekday: weekday,
    description: course_descriptions[index]
  )
end
