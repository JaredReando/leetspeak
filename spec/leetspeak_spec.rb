require('rspec')
require('leetspeak')

describe("leetspeak method") do

it("does not change string values that leetspeak rules do not apply to.") do
  expect(leetspeak('handball')).to(eq('handball'))
end

it("replaces all letter 'e's with the nubmer '3'.") do
  expect(leetspeak('example')).to(eq('3xampl3'))
end

it("replaces all letter 'o's with the nubmer '0'.") do
  expect(leetspeak('poop')).to(eq('p00p'))
end

it("replaces all capital letter 'I''s with the nubmer '1'.") do
  expect(leetspeak('Ionize')).to(eq('10niz3'))
end

it("replaces all letter 's's with the letter 'z', unless it is the first letter of the word.") do
  expect(leetspeak('scoreS')).to(eq('sc0r3z'))
end

it("performs the razzle-dazzle.") do
  expect(leetspeak("Don't you love these 'String' exercises? I do!")).to(eq("D0n't y0u l0v3 th3z3 'String' 3x3rciz3z? 1 d0!"))
end


end


def time_degree(time)
  time_array = time.split(":")
  hours = time_array[0].to_i
  minutes = time_array[1].to_i

  degrees = ((hours * 30)+(minutes*0.5)) - (minutes * 6)

  if (degrees > 180)
    degrees = 360 - degrees
  end

  degrees.abs
end




empty = ("!".."9").to_a
