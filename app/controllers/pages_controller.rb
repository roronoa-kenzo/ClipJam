class PagesController < ApplicationController
  def media
    if user_signed_in?
      @posts = current_user.posts

      if @posts.empty?
        @message = "You have no posts yet."
      else
        @message = "My Clip"
      end

    end
  end


  def tos


  end
end
