class StartScreen < ScreenModels::Screen
  element :welcome, 'welcome'
  element :mushroom, 'mushroom_main'
end

class GameScreen < ScreenModels::Screen
  element :mario, 'mario_small'
  element :score, 'score'
end
