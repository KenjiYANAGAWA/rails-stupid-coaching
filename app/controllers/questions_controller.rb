class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:answer]
    @answer = "I don't care, get dressed and go to work!"
    case @user_input
    when 'I am going to work'
      @answer = 'Great!'
    when @user_input.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    end
  end
end


# I am going to work
# Great!

# ? at the end
# Silly question, get dressed and go to work!

# I don't care, get dressed and go to work!
