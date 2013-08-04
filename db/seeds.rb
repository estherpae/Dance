# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


instructor_hashes = [
  { :name => "Eddy Ocampo", :style => "Contemporary", :biography => "Eddy Ocampo has served as faculty member as well as school director, the director of Giordano II and the director of the Giordano Scholarship program for Giordano Jazz Dance Chicago. As a master teacher, Eddy has taught in Europe, Mexico, Canada, Turkey, the Russian Republic and throughout the U.S. As a choreographer, Mr. Ocampo's choreography can be seen on such companies as Giordano Jazz Dance Chicago, Houston Metropolitan Dance Company, Odyssey Dance Theatre (Salt Lake City, UT), Kannon Dance (St. Petersburg, Russia), Lisa Clark Dancers (San Francisco, CA), Thodos Dance Chicago, Eisenhower Dance Ensemble, Inaside Chicago Dance and many regional ballet companies. Eddy received the Dance Chicago 2004 Outstanding Choreography Award for Dance Chicago in 2005 and 2007. He has been featured in Dance Teacher Magazine as well as named one of the best jazz dance teachers in the country by Dance Spirit Magazine. In 2005, Mr. Ocampo was honored as Filipino American of the Year by the Filipino Association of America. He is currently resident choreographer for Inaside Chicago Dance Company and Creative Director for both Bento Box & Flirt Productions. This is Eddy's 10th year as Artistic Director of FJDT."},
  { :name => "Kim Fletcher Stibal", :style => "Jazz, MTV, and Contemporary", :biography => "Kim hails from Worcester, Massachusetts. Kim received a scholarship from the University of the Arts, where she earned a BFA in dance. She performed with Philadanco and Koresh Dance Company. For six years she was a Rockette in the Radio City Christmas Spectacular. Kim was a principle performer for 12 years with Gus Giordano Jazz Dance Chicago. She is renowned for her intense training. Kim is now the Associate Artistic Director of FJDT 2."},
  { :name => "Brent Caburnay", :style => "(Contemporary) Ballet", :biography => "Brent Caburnay is a former dancer with the Joffrey Ballet of Chicago. He has performed in Chicago for several years, in Dance for Life, The Lyric Opera of Chicago and other venues. He has also designed costumes for Gus Giordano 2 and Hubbard Street 2. Everyone has enjoyed his unique training technique, choreography style and intensity. Brent is the FJDT Ballet Master."},
  { :name => "Catie Dietz Griffith", :style => "Ballet", :biography => "She is a classical ballet dancer highly trained in both the RAD syllabus and Vagonava technique. Her training in New York includes the Joffrey Ballet School, the Alvin Ailey American Dance School and the Broadway Dance Center. She spent four seasons with Giordano Jazz Dance Chicago. Though Catie will only be teaching on Mondays, we have tried to offer classes that will allow access to most of her former students."},
  { :name => "Richard Smith", :style => "Jazz", :biography => "He studied and performed with ECU Dance Theater at East Carolina University. He has worked with Mia Michaels, Mark Dendy, Katiti King, Frank Chavez. Sherry Zunker Dow, Randy Duncan, Eddy Ocampo and Gus Giordano himself. Richard’s performance credits include Midwest Dance Collective, Dance Chicago, Gateway Ballet of St. Louis and Dance for Life. He is active with theater production companies in Chicago, as a backup dancer for various pop artists, and teaches workshops throughout the Midwest and East Coast. Richard is a former member of Gus Giordano Jazz Dance Chicago 2 and is currently a regional dance adjudicator, Artistic Director of Inaside Chicago Dance, and the Associate Artistic Director of FJDT Trainee program."}
]

Instructor.destroy_all
instructor_hashes.each do |i_hash|
  i = Instructor.new
  i.name = i_hash[:name]
  i.style = i_hash[:style]
  i.biography = i_hash[:biography]
  i.save
end
puts "There are now #{Instructor.count} rows in the instructors table."


studio_hashes = [
  { :name => "Talent Forum", :address => "450 Peterson Road, Libertyville, IL 60048", :phone => "(847)816-1711"},
  { :name => "Inaside Chicago Dance", :address => "2936 N. Southport Ave, Suite 210, Chicago, IL 60657", :phone => "(773)296-4909"},
  { :name => "Visceral Dance Studio", :address => "2820 N. Elston Ave, Chicago, IL 60618", :phone => "(773)772-1771"}
]

Studio.destroy_all
studio_hashes.each do |s_hash|
  i = Studio.new
  i.name = s_hash[:name]
  i.address = s_hash[:address]
  i.phone = s_hash[:phone]
  i.save
end
puts "There are now #{Studio.count} rows in the instructors table."
