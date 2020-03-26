class AlphaScreen < ScreenModels::Screen
  element :magic, 'a:MAGIC', 'i:Magic'
  element :popular, 'a:POPULAR', 'i:Popular'
  element :newest, 'a:NEWEST', 'i:Newest'
  element :ending_soon, 'a:NEWEST', 'i:Ending Soon'
  element :sign_up_or_log_in, 'i:Sign up or Log in'
end

class NavBar < ScreenModels::Screen
  element :explore, 'i:Explore'
  element :activity, 'i:Activity'
  element :search, 'i:Search'
  element :profile, 'i:Profile'
end

class SignupOrLogin < ScreenModels::Screen
  element :facebook, 'i:Log in with Facebook'
  element :sign_up, 'i:Sign up'
  element :log_in, 'i:Log in'
end

class Signup < ScreenModels::Screen
  element :name, 'i:Name'
  element :email, 'i:Email address'
  element :password, 'i:Password'
  element :sign_up, 'i:Sign up[1]'
end

class Numpad < ScreenModels::Screen
  element :go, 'i:go'
end
