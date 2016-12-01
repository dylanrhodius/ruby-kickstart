#Katerina took the time to help me solve this problem
#so will upload her latest version.

require 'date'

class Blog
 attr_accessor :text, :date, :user

 def initialize(date, user, text)
   self.text = text
   self.date = date
   self.user = user
 end

 def summary
   text.split[0..9].join(' ')
 end

 def entry
   "#{user.username} #{date}\n#{text}"
 end

 def ==(other)
   date   == other.date &&
     user == other.user &&
     text == other.text
 end

end

class User
 attr_accessor :username, :blogs

 def initialize(username)
   self.username = username
   self.blogs = Array.new
 end

 def add_blog(date, text)
   added_blog = Blog.new(date, self, text)
   blogs << added_blog
   self.blogs = blogs.sort_by { |blog| blog.date }.reverse
   added_blog
 end

end
