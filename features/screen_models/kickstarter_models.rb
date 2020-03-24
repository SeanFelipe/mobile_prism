class AlphaScreen < ScreenModels::Screen
  element :magic, 'a:MAGIC', 'i:Magic'
  element :popular, 'a:POPULAR', 'i:Popular'
  element :newest, 'a:NEWEST', 'i:Newest'
  element :ending_soon, 'a:NEWEST', 'i:Ending Soon'
end

class NavBar < ScreenModels::Screen
  element :explore, 'i:Explore'
  element :activity, 'i:Activity'
  element :search, 'i:Search'
  element :profile, 'i:Profile'
end
