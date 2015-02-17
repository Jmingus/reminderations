class UsersController < ApplicationController
  def index
    @reminder = Reminder.new
  end

end
