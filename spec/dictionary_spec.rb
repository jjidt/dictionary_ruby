require 'rspec'
require 'Term'
require 'pry'

describe 'Term' do
  it 'creates an instance of Term' do
    test_term = Term.new({:word => "test_word"})
    test_term.should be_an_instance_of Term
  end

  it 'takes multiple arguements' do
    test_term = Term.new({:word => "beet" , :def => "red and round"})
    test_term.word.should eq "beet"
    test_term.def.should eq "red and round"
  end

  it 'groups terms together' do
    test_term = Term.new({:word => "beet" , :def => "red and round"})
    test_term2 = Term.new({:word => "dork", :def => "whale's penis"})
    Term.terms["beet"].should be_an_instance_of Term
    binding.pry
  end
end
