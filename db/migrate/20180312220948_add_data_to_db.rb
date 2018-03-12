class AddDataToDb < ActiveRecord::Migration[5.1]
  def change
    Admin.create!({:email => "tom.koptel@gmail.com", :password => "111111", :password_confirmation => "111111"})

    (1..10).each {
      Post.create!({:title => Faker::Lorem.word, :body => Faker::Lorem.paragraph(2)})
    }
  end
end
