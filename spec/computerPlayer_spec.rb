require 'computer_player.rb'

describe Computer do
  it 'must respond to choose' do
    expect(subject).to respond_to(:choose)
  end

  it 'must must only be allowed to choose Rock, Paper or Scissors' do
    subject.choose.should satisfy { |choice| ['Rock', 'Paper', 'Scissors'].include?(choice) }
  end
end
