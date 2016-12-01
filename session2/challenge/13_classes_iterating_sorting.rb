#looking at errors and line 101 realised blog entry
#needs to return: user, date and text
#tests suggest method needs to be specifically called
#entry
#tests suggest no username variable:
#wasn't pointing to USER CLASS!!!
#added "\n" after date
#removed the space after "\n"
#6 examples passed so far
#had to copy def=other method, did not understand.
#corrected add_blog, had to push instance of class blog
#Can't pass example 9 "undefined method date" on line
#60. But it does pass example 6 which uses this line..

require 'date'

class User
  attr_accessor :username

  def initialize(username)
    @username = username
    @blogs_written_array = []
  end

  def add_blog(date, text)
    to_add = Blog.new(date, self, text)
    @blogs_written_array.push(to_add)

  end

  def blogs
    @blogs_written_array.sort!.reverse!
  end

end


class Blog
  attr_accessor :text, :date, :user

  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end

  def entry
    return "#{user.username} #{date}\n#{text}"
  end

  def summary
    summary_array = text.split(" ")
    if summary_array.length > 10
      summary_array[0...10].join(" ")
    else
      summary_array.join(" ")
    end
  end

  def ==(other)
    date == other.date &&
    user == other.user &&
    text == other.text
  end


end

# ==========  EXAMPLE  ==========
#
#lissa = User.new 'QTSort'
#lissa.username                  # => "QTSort"
# lissa.blogs                     # => []
#
#lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
# lissa.blogs                     # => [ blog1 ]
#
#blog1 = lissa.blogs.first
#blog1.user                      # => lissa
#
#Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"                                    # we'll call this blog2
#Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"              # we'll call this blog3
# Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best ^_^"   # we'll call this blog4
# lissa.blogs                     # => [ blog1 , blog4 , blog2 , blog3 ]
#
# blog5 = Blog.new Date.today, lissa, <<BLOG_ENTRY
# Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
# Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
# eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
# porta lectus.
# BLOG_ENTRY
#
# blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# blog5.entry         # => QTSort 2010-05-28
#                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#                          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#                          eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#                          porta lectus.
#
# blog5.date = Date.parse('2009-01-02')
# blog5.user = User.new 'disloyalist.party'
# blog5.text = "From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original\n" \
#              "I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,\n" \
#              "All my labor will be lost with time"
#
# blog5.entry      # => disloyalist.party 2009-01-02
#                       From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original
#                       I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,
#                       All my labor will be lost with time
