require('rspec')
require('pry')
require('rock_paper_scissors')

describe('RPS#game') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(" YOU WIN! "))
  end
  it("returns true if scissors is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(" YOU WIN! "))
  end
  it("returns true if paper is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(" YOU WIN! "))
  end
  it("returns tie if user is the object and comp is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "paper")).to(eq(" ITS A DRAW! "))
  end
  it("returns false if scissors is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "rock")).to(eq(" YOU LOSE YA DINGUS! "))
  end
end