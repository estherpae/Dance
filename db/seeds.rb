# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instructor.destroy_all
  i1 = Instructor.create({ :name => "Eddy Ocampo", :style => "Contemporary", :biography => "Eddy Ocampo has served as faculty member as well as school director, the director of Giordano II and the director of the Giordano Scholarship program for Giordano Jazz Dance Chicago. As a master teacher, Eddy has taught in Europe, Mexico, Canada, Turkey, the Russian Republic and throughout the U.S. As a choreographer, Mr. Ocampo's choreography can be seen on such companies as Giordano Jazz Dance Chicago, Houston Metropolitan Dance Company, Odyssey Dance Theatre (Salt Lake City, UT), Kannon Dance (St. Petersburg, Russia), Lisa Clark Dancers (San Francisco, CA), Thodos Dance Chicago, Eisenhower Dance Ensemble, Inaside Chicago Dance and many regional ballet companies. Eddy received the Dance Chicago 2004 Outstanding Choreography Award for Dance Chicago in 2005 and 2007. He has been featured in Dance Teacher Magazine as well as named one of the best jazz dance teachers in the country by Dance Spirit Magazine. In 2005, Mr. Ocampo was honored as Filipino American of the Year by the Filipino Association of America. He is currently resident choreographer for Inaside Chicago Dance Company and Creative Director for both Bento Box & Flirt Productions. This is Eddy's 10th year as Artistic Director of FJDT."})
  i2 = Instructor.create({ :name => "Kim Fletcher Stibal", :style => "Jazz, MTV, and Contemporary", :biography => "Kim hails from Worcester, Massachusetts. Kim received a scholarship from the University of the Arts, where she earned a BFA in dance. She performed with Philadanco and Koresh Dance Company. For six years she was a Rockette in the Radio City Christmas Spectacular. Kim was a principle performer for 12 years with Gus Giordano Jazz Dance Chicago. She is renowned for her intense training. Kim is now the Associate Artistic Director of FJDT 2."})
  i3 = Instructor.create({ :name => "Brent Caburnay", :style => "(Contemporary) Ballet", :biography => "Brent Caburnay is a former dancer with the Joffrey Ballet of Chicago. He has performed in Chicago for several years, in Dance for Life, The Lyric Opera of Chicago and other venues. He has also designed costumes for Gus Giordano 2 and Hubbard Street 2. Everyone has enjoyed his unique training technique, choreography style and intensity. Brent is the FJDT Ballet Master."})
  i4 = Instructor.create({ :name => "Catie Dietz Griffith", :style => "Ballet", :biography => "She is a classical ballet dancer highly trained in both the RAD syllabus and Vagonava technique. Her training in New York includes the Joffrey Ballet School, the Alvin Ailey American Dance School and the Broadway Dance Center. She spent four seasons with Giordano Jazz Dance Chicago. Though Catie will only be teaching on Mondays, we have tried to offer classes that will allow access to most of her former students."})
  i5 = Instructor.create({ :name => "Richard Smith", :style => "Jazz", :biography => "He studied and performed with ECU Dance Theater at East Carolina University. He has worked with Mia Michaels, Mark Dendy, Katiti King, Frank Chavez. Sherry Zunker Dow, Randy Duncan, Eddy Ocampo and Gus Giordano himself. Richard’s performance credits include Midwest Dance Collective, Dance Chicago, Gateway Ballet of St. Louis and Dance for Life. He is active with theater production companies in Chicago, as a backup dancer for various pop artists, and teaches workshops throughout the Midwest and East Coast. Richard is a former member of Gus Giordano Jazz Dance Chicago 2 and is currently a regional dance adjudicator, Artistic Director of Inaside Chicago Dance, and the Associate Artistic Director of FJDT Trainee program."})
puts "There are now #{Instructor.count} rows in the instructors table."


Studio.destroy_all
  s1 = Studio.create({ :name => "Talent Forum", :address => "450 Peterson Road, Libertyville, IL 60048", :phone => "(847)816-1711"})
  s2 = Studio.create({ :name => "Inaside Chicago Dance", :address => "2936 N. Southport Ave, Suite 210, Chicago, IL 60657", :phone => "(773)296-4909"})
  s3 = Studio.create({ :name => "Visceral Dance Studio", :address => "2820 N. Elston Ave, Chicago, IL 60618", :phone => "(773)772-1771"})
puts "There are now #{Studio.count} rows in the studios table."


DanceClass.destroy_all
 i1 = DanceClass.create({:name => "Eddy Ocampo's Master Class",  :instructor_id => i1.id, :studio_id => s3.id, :when => "2013-08-07", :time => "11:30 - 1:00 pm ", :cost => "25"})
i2 = DanceClass.create({:name => "Kim Fletcher Stibal's Jazz Class", :instructor_id => i2.id, :studio_id => s2.id, :when => "2013-07-29", :time => "8:00 - 10:00 pm", :cost => "25" })
i3 = DanceClass.create({:name => "Brent Caburnay's Ballet Class", :instructor_id => i3.id, :studio_id => s1.id, :when => "2013-09-10", :time => "7:00 - 8:15 pm", :cost => "25"})
i4 = DanceClass.create({:name => "Catie Dietz Griffith's Ballet Class", :instructor_id => i4.id, :studio_id => s2.id, :when => "2013-08-10", :time => "10:00 - 11:30 am", :cost => "25"})
i5 = DanceClass.create({:name => "Richard Smith's Intense Jazz Class", :instructor_id => i5.id, :studio_id => s2.id, :when => "2013-08-06", :time => "3:00-4:00 pm", :cost => "25"})
puts "There are now #{DanceClass.count} rows in the dance_classes table."

User.destroy_all
  u1 = User.create({:name => "Esther", :password => "estherloves", :password_confirmation => "estherloves"})
  u2 = User.create({:name => "Willow", :password => "willowloves", :password_confirmation => "willowloves"})
  u3 = User.create({:name => "Alexis", :password => "alexisloves", :password_confirmation => "alexisloves"})
puts "There are now #{User.count} rows in the User table."

FavoriteClass.destroy_all
  fc1 = FavoriteClass.create({:user_id=> u1.id, :dance_class_id => i1.id})
  fc2 = FavoriteClass.create({:user_id=> u2.id, :dance_class_id => i2.id})
  fc3 = FavoriteClass.create({:user_id=> u3.id, :dance_class_id => i4.id})
  fc4 = FavoriteClass.create({:user_id=> u2.id, :dance_class_id => i5.id})
  fc5 = FavoriteClass.create({:user_id=> u1.id, :dance_class_id => i3.id})
  fc6 = FavoriteClass.create({:user_id=> u3.id, :dance_class_id => i2.id})
puts "There are now #{FavoriteClass.count} rows in the FavoriteClass table."

Exercise.destroy_all
  e1 = Exercise.create({:name => "Splits and Over Splits", :user_id => u1.id,  :picture_url => "http://danceclubtroup.webs.com/,,over%20splits.jpg", :description => "Make sure you are warm and have stretch clothes on before you start the exercise. First, you start off by going into a lunge with one leg bent in front and the other bent behind.  Next, slide carefully into your splits.  Hold each side for 1 minute (It helps if you put a timer on your phone).  Also make sure you do your middle splits for a minute as well.  Make sure that your legs are in a straight line when you stretch your middle splits (I use the wall as my 'ruler').  Once you have mastered the splits or want to improve more rapidly on your regular splits, try the oversplits (Picture of oversplits below).  This is when you have your front or back leg on a chair or any elevated surface and your slide into your splits.  Or in the case of the middle legs, put one leg on the chair/elevated surface and slide into your middles splits.  Hold each side for 1 minute.   This will help you improve your flexibility.  Hope it helps!"})
  e2 = Exercise.create({:name => "Lower Abs", :user_id => u2.id,  :picture_url => "http://cf.ltkcdn.net/exercise/images/std/154774-325x216-leg-lift.jpg", :description => "This exercise will help your lower abs become firm! This exercise is like leg lifts, but with a dance twist.  Leg lifts is where you lie on your back and keep your lower back on the floor during the entire exercise.  You should have your legs straight up (Look at the picture above as an example).  When you lower your legs beat them using your innner thighs and pointe your toes.  On your way up, beat your legs using your inner thighs and flex your feet.  Repeat this 20 times.  Do this cycle 3 times! This will help your lower abs and Inner thighs! Good Luck gaining those six packs. "})
  e3 = Exercise.create({:name => "Bridge - Push Over", :user_id => u3.id,  :picture_url => "http://healthyliving.azcentral.com/DM-Resize/photos.demandstudios.com/getty/article/210/17/sb10067679t-001.jpg?w=600&h=600&keep_ratio=1", :description => "This exercise will help you with your back flexibility! First, start in a normal bridge. You lay on your back and put your hands on the ground over your head. Then, push your pelvis up so your back is not on the ground.  Hold this bridge for at least 1 minute.  If you want more of a stretch, scootch your feet closer to your hands or vice versa.  Or you can try to straighten your legs (shown in the picture above).  Hope this helps!"})

puts "There are now #{Exercise.count} rows in the Exercise table."

