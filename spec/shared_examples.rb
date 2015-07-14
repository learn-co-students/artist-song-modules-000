require 'pry'

shared_examples "song and artist" do |params|
  before(:each) do
  	described_class.reset_all
  end
  
  let!(:instance) { described_class.new }	

  it "can initialize itself" do
    expect(instance).to be_a(described_class)
  end

  it "can have a name" do
    instance.name = params[:name]
    expect(instance.name).to eq(params[:name])
  end

  it "converts its name to a url friendly parameter" do 
    instance.name = params[:name]
    expect(instance.to_param).to eq(params[:converted_name])
  end
  
  describe "Class methods" do
    it "keeps track of the instances that have been created" do
      expect(described_class.all).to include(instance)
    end

    it "can count how many instances have been created" do
      expect(described_class.count).to eq(1)
    end

    it "can find an instance by name" do
      instance.name = params[:name]
      expect(described_class.find_by_name(params[:name])).to eq(instance)
    end

    it "can reset the instances that have been created" do
      described_class.reset_all
      expect(described_class.count).to eq(0)
    end
  end
end