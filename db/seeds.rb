# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


User.delete_all
Product.delete_all


# creazione di 2 utenti, uno del gruppo ADMIN e uno del gruppo USER

User.create (:username => "admin", :password =>"password", :email =>'email1@email.it')
User.create (:username => "user", :password =>"password", :email =>'email2@email.it')


# creazione di alcuni prodotti

img_array = [
  "http://www.costruzionisolari.it/img/prodotti/prodottu_idraulici_stazione_mr.jpg",
  "http://www.costruzionisolari.it/img/prodotti/prodottu_idraulici_valvola3vie.jpg",
  "http://www.globalproject.info/public/resources/images/small/volantino.jpg",
  "http://www.facebook.com/photo.php?fbid=384463881566282&set=a.384463874899616.100543.230399856972686&type=1",
  "http://sphotos-a.ak.fbcdn.net/hphotos-ak-prn1/c46.0.403.403/p403x403/21432_515183918494277_232987316_n.jpg",
  "http://www.costruzionisolari.it/img/prodotti/prodottu_idraulici_stazione_mr.jpg",
  "http://www.costruzionisolari.it/img/prodotti/prodottu_idraulici_valvola3vie.jpg",
  "http://www.globalproject.info/public/resources/images/small/volantino.jpg",
  "http://www.facebook.com/photo.php?fbid=384463881566282&set=a.384463874899616.100543.230399856972686&type=1",
  "http://sphotos-a.ak.fbcdn.net/hphotos-ak-prn1/c46.0.403.403/p403x403/21432_515183918494277_232987316_n.jpg",
  "http://www.costruzionisolari.it/img/prodotti/prodottu_idraulici_stazione_mr.jpg",
  "http://www.costruzionisolari.it/img/prodotti/prodottu_idraulici_valvola3vie.jpg",
  "http://www.globalproject.info/public/resources/images/small/volantino.jpg",
  "http://www.facebook.com/photo.php?fbid=384463881566282&set=a.384463874899616.100543.230399856972686&type=1",
  "http://sphotos-a.ak.fbcdn.net/hphotos-ak-prn1/c46.0.403.403/p403x403/21432_515183918494277_232987316_n.jpg"]
  
# creazione di 5 prodotti 
for k in 1..15
  Product.create (:title => "titolo_#{k}", 
  :description =>"description_#{k}", 
  :price => 10,
  :image_url => img_array[k-1]
  )
end


