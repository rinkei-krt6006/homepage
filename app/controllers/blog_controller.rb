class BlogController < ApplicationController
  def top
    newBlog = Blog.last()
    @newBlogTitle =  newBlog[:title]
    @newBlogId = newBlog[:id]
    
  end

  def page
    data = Blog.find_by(id: params[:id])
    if !data then
      @title = "お探しのページは見つかりませんでした"
      @text = "urlをお確かめの上再度アクセスをおねがいします"
      return
    else
      @title = data[:title]
      @time = data[:time]
      @text = data[:text]
    end
  end
end
