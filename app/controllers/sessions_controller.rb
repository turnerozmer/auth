class SessionsController < ApplicationController

    def new

    end

    def create
        entered_email = params["email"]
        entered_password = params["password"]
        @user = User.find_by({email: entered_email})
        #findby gives 1 value, where gives array
        if @user
            if BCrypt::Password.new(@user.password) == entered_password
                session["user_id"] = @user.id
                flash[:notice] = "Welcome!"
                redirect_to "/companies"
            else
                flash[:notice] = "Password Incorrect"
                redirect_to "/sessions/new"
            end
        else
            flash[:notice] = "No user with email"
            redirect_to "/sessions/new"
        end
    end

    def destroy
        session["user_id"] = nil
        flash[:notice] = "You have been logged out"
        redirect_to "/sessions/new"
    end

end
