class UserMailer < ApplicationMailer

    def example(user)
          @user = user
          mail(to: @user.email, subject: 'Test Email for Letter Opener')
    end
end
