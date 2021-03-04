# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create email: 'adriano__kira@hotmail.com', password:'123456'

Course.create title:'Home', img:'sidebar/ic_home.png'
Course.create title:'TADS', img:'sidebar/ic_tads.png'
Course.create title:'Meio Ambiente', img:'sidebar/ic_mamb.png'
Course.create title:'Mecânica', img:'sidebar/ic_mec.png'
Course.create title:'Física', img:'sidebar/ic_fis.png'
Course.create title:'Ciências Sociais', img:'sidebar/ic_soc.png'
Course.create title:'Humor', img:'sidebar/ic_humor.png'
Course.create title:'Outros', img:'sidebar/ic_b.png'

