require 'spec_helper'

class LorempixelHelperView
  include LorempixelHelper::ViewHelpers
end

describe LorempixelHelper::ViewHelpers do
  let(:myview) { LorempixelHelperView.new }

  it "should accept a string" do
    myview.lorempixel_image_tag("400").should == "<img src='http://lorempixel.com/400/400' alt='A lorempixel image' height='400' width='400' title='A lorempixel image' class='lorempixel' />"
  end
  
  it "should accept a integer" do
    myview.lorempixel_image_tag(400).should == "<img src='http://lorempixel.com/400/400' alt='A lorempixel image' height='400' width='400' title='A lorempixel image' class='lorempixel' />"
  end
  
  it "should accept a componded WxH" do
    myview.lorempixel_image_tag("400x200").should == "<img src='http://lorempixel.com/400/200' alt='A lorempixel image' height='200' width='400' title='A lorempixel image' class='lorempixel' />"
  end

  it "should accept category" do
    myview.lorempixel_image_tag("400", :category=> "sports").should == "<img src='http://lorempixel.com/400/400/sports/' alt='A lorempixel image' height='400' width='400' title='A lorempixel image' class='lorempixel' />"
  end

  it "should accept category with custom text" do
    myview.lorempixel_image_tag("400x200", :text=> 'Dummy-Text', :category=> "sports").should == "<img src='http://lorempixel.com/400/200/sports/Dummy-Text' alt='Dummy-Text' height='200' width='400' title='Dummy-Text' class='lorempixel' />"
  end
  
  it "should accept selected picture in category" do
    myview.lorempixel_image_tag("400", :category=> "sports", :item => 2).should == "<img src='http://lorempixel.com/400/400/sports/2/' alt='A lorempixel image' height='400' width='400' title='A lorempixel image' class='lorempixel' />"
  end

  it "should accept selected picture in category with custom text" do
    myview.lorempixel_image_tag("400", :text=> 'Dummy-Text', :category=> "sports", :item => 1).should == "<img src='http://lorempixel.com/400/400/sports/1/Dummy-Text' alt='Dummy-Text' height='400' width='400' title='Dummy-Text' class='lorempixel' />"
  end
end