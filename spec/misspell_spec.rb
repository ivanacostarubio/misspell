require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class WTF
  include Misspell

  def attempt
    "wtf"
  end
end

describe WTF do
  let(:wtf) { WTF.new }

  it "does just as expected" do
    wtf.attempt.should == "wtf"
  end

  it "calls a method with distance 1" do
    wtf.attemp.should == "wtf"
  end

  it "calls another method with distance 1" do
    wtf.atempt.should == "wtf"
  end 

  it "booms for Levenshtein > 1" do
      expect { wtf.winning? }.to
  end
end
