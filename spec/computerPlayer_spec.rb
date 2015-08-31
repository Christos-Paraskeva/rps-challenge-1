require 'computerPlayer.rb'

describe Computer do
  it 'must respond to choose' do
    expect(subject).to respond_to(:choose)
  end

  it 'must must only be allowed to choose Rock, Paper or Scissors' do
    subject.choose.should satisfy{|s| ['Rock', 'Paper', 'Scissors'].include?(s)}
  end
end
