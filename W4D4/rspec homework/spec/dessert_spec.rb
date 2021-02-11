require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:brownie) {Desert.new ("Brownie", 100, "Mom")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("Brownie")
    end

    it "sets a quantity" do
      expect(brownie.quatitiy).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Desert.new("cake", "lots", "Bob") }.to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      brownie.add_ingredient("butter")
      expect(brownie.ingredient).to include("butter")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
     ingredients = ["butter", "eggs", "chocolate", "milk"]
     brownie.mix!
     expect(brownie.ingredients).not_to eq(ingredients)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(35)
      expect(brownie.quantity).to eq(65)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {brownie.eat(200)}.to raise_error("Not enough left")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
     allow(chef).to receive(:titelize).and_return("Chef Mom The Great Baker")
     expect(brownie.serve).to eq("Chef Mom The Great Baker has made 100 brownies")
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:make_more).with(brownie)
      brownie.make_more
    end

  end
end
