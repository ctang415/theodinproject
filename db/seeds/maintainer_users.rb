if Rails.env.development? || ENV['STAGING']
  names = ['kevin']

  names.each do |name|
    User.find_or_create_by!(email: "#{name}@odin.com") do |user|
      user.username = name
      user.password = 'password'
    end
  end
end