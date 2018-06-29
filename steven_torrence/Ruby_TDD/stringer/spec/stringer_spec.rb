RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "returns either 'string...' or string based on length" do
    expect(Stringer.minify "Hello, my name is Steven!", 5).to eq("Hello...")
    expect(Stringer.minify "Hi", 5).to eq("Hi")
  end

  it "iterates over a string a replaces each instance of word with the replacement provided" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "iterates over a string and adds each word into an array and returns that array" do
    expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end

  it "remove each instance of the second parameter within the orginal string" do
    expect(Stringer.removify("I'm not a developer not", "not")).to eq("I'm a developer")
  end

end
