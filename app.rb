require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample
  
  @outcome = String.new

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

 erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample
  
  @outcome = String.new

  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample
  
  @outcome = String.new

  if @comp_move == "scissors"
    @outcome = "tied"
  elsif @comp_move == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:scissors)
end
