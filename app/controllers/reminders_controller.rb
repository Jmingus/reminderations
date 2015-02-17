class RemindersController < ApplicationController

  def new
   @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new(reminder_params)

    if @reminder.save
      redirect_to root_path
    else
      'Sorry About That!'
    end
  end

  private

  def reminder_params
    params.require(:reminder).permit(:title, :description, :priority)
  end
end
