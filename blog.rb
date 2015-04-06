 class Blog
  attr_accessor :title :all_blog_posts :total_blog_posts

  def initialize
    @time_created = Time.now
    puts "Title of Post: "
    @title= gets.chomp
    @all_blog_posts = []
    @total_blog_posts = 0
  end

  def create_blogpost
    new_blog_post = Blog_Post.new
    @all_blog_posts << new_blog_post
    @total_blog_posts +=1
  end

  def group_all_blog_posts
    return @all_blog_posts
  end

 end



 class Blog_Post
  attr_accessor :title :time_created :content

  def initialize
    @time_created = Time.now
    puts "Title of Post: "
    @title=gets.chomp

    puts "Content goes here: "
    @content= gets.chomp   
  end

 end