# PROBLEM
# Yousry is thirsty and wants to drink a club mate.
# Bottle - closed?
# Yousry - open, drink_once_from_bottle, thirsty?, learn
# world ...
require_relative 'world'

make_it_crazy

bottle = world.club_mate_bottle
yousry = world.my_friend_yousry

yousry.learn :drink do
  if bottle.closed?
    yousry.open(bottle)
  end

  while yousry.thirsty?
    yousry.drink_once_from_bottle(bottle)
  end
end

yousry.drink
