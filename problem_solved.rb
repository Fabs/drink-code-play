require_relative 'world'

make_it_crazy

yousry = world.my_friend_yousry
bottle = world.club_mate_bottle

yousry.learn :drink do
  if bottle.closed?
    yousry.open(bottle)
  end
  yousry.drink_from_bottle(bottle)
end

while yousry.thirsty?
  yousry.drink
end
