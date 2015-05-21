ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address                    => 'smtp.sendgrig.net',
    :port                       => '587',
    :authentication             => :plain,
    :user_name                  => 'app37078605@heroku.com',
    :password                   => '1j7acbtb6540',
    :domain                     => 'heroku.com',
    :enable_starttls_auto       => true
}