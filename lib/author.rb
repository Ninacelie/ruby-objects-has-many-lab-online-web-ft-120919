class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

end
