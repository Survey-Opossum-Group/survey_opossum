class SessionsController < ApplicationController

  def login
    if request.post?
      author = Author.find_by_email(params[:email])
      if author && author.authenticate(params[:password_digest]) #password_digest?
        session[:author_id] = author.id
        redirect_to surveys_path, notice: "Login complete"
      else
        flash[:notice] = "Invalid email or password"
      end
    end
  end

  def logout
    session[:author_id] = nil
    redirect_to sessions_login_path, notice: "Successfully logged out."
  end

end
