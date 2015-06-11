class SessionsController < ApplicationController
  def login
    if request.post?
      author = Author.find_by_email(params[:email])
      if author && author.authenticate(params[:password]) #password_digest?
        session[:author_id] = author.id
        redirect_to parents_path, notice: "Login complete"
      else
        flash[:notice] = "Invalid email or password"
      end
    end
  end

  def logout
  end
end
