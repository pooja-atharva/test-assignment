namespace :reminders do
  task send_email: :environment do
    User.all.each do |user|
      user.favorites.each do |favorite_show|
        show_time = favorite_show.time.strftime("%H:%M")
        right_time = (Time.now + 30.minutes).strftime("%H:%M")
        if show_time == right_time
          UserMailer.reminder_email(user, favorite_show).deliver_now
        end
      end
    end
  end
end
