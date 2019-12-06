class StaticPagesController < ApplicationController

  def home
    @email = Email.new
    @recent_posts = Post.all.reorder("created_at desc").limit(5)
  end

end