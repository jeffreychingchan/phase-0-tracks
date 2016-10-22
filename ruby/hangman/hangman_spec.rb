require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("testing") }



  it "makes sure the method stores the word" do
    expect(hangman.word).to eq "testing"
  end

  it "the word should be all '*' " do
    expect(hangman.status).to eq "*******"
  end

  it "counts the guess for user" do
    expect(hangman.guess_count).to eq 12
  end

  

end 