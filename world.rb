require_relative 'yousry'
require_relative 'club_mate'

World = Struct.new(:my_friend_yousry, :club_mate_bottle)
@world = nil
@drinks = nil

def world
  drinks = @drinks || 1
  @world ||= World.new(Yousry.new(drinks), ClubMate.new)
end

def make_it_summer
  @drinks = 2
end

def make_it_hell
  @drinks = 3
end

def make_it_crazy
  @drinks = 1 + rand(3)
end
