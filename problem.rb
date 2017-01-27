# PROBLEM
# Make yousry drink club mate
# Bottle - closed?
# Yousry - thirsty?, drink_once_from_bottle, open, learn
# world - my_friend_yousry club_mate_bottle
require_relative 'world'

#make_it_summer
#make_it_hell
make_it_crazy

yousry = world.my_friend_yousry
bottle = world.club_mate_bottle

yousry.learn :drink_to_satisfaction do
  if bottle.closed?
    yousry.open(bottle)
  end

  while yousry.thirsty?
    yousry.drink_once_from_bottle(bottle)
  end
end

yousry.drink_to_satisfaction
