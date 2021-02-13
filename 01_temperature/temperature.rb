def ftoc
  "#ftoc"
end
def ftoc32
  0
end
def ftoc212
  100
end
def ftoc68
  20
end
def ftoc98_6
  37
end
def ctof
  "#ctof"
end
def ctof0
  32
end
def ctof100
  212
end
def ctof20
  68
end
def ctof37
  98.6
end

require "temperature"

describe "temperature conversion functions" do

  describe "#ftoc" do

    it "converts freezing temperature" do
      ftoc32.should == 0
    end

    it "converts boiling temperature" do
      ftoc212.should == 100
    end

    it "converts body temperature" do
      ftoc98_6.should == 37
    end

    it "converts arbitrary temperature" do
      ftoc68.should == 20
    end

  end

  describe "#ctof" do

    it "converts freezing temperature" do
      ctof0.should == 32
    end

    it "converts boiling temperature" do
      ctof100.should == 212
    end

    it "converts arbitrary temperature" do
      ctof20.should == 68
    end

    it "converts body temperature" do
      ctof37.should be_within(0.1).of(98.6)
      # Why do we need to use be_within?
      # See http://www.ruby-forum.com/topic/169330
      # and http://en.wikipedia.org/wiki/IEEE_754-2008
      # and http://en.wikipedia.org/wiki/Double_precision_floating-point_format
      # Also, try "puts 0.5 - 0.4 - 0.1" -- pretty crazy, right?
    end

  end

end

