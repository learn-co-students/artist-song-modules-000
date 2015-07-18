require_relative './spec_helper'

RSpec.shared_examples "custom class" do 

	before(:each) do
    theclass.reset_all
  end

	it "can be initialized" do
		expect(subject).to be_an_instance_of(theclass)
	end

	it "can have a name" do
    subject.name = "Rockstar"
    expect(subject.name).to eq("Rockstar")
  end 

  it 'converts its name to a url friendly parameter' do
    subject.name = 'Clowny Cupcake'
    expect(subject.to_param).to eq("clowny-cupcake")
  end

  describe "Class methods" do
    it "keeps track of the subjects that have been created" do
      expect(theclass.all).to include(subject)
    end

    it "can count how many subjects have been created" do
      expect(theclass.count).to eq(1)
    end

    it "can find an subject by name" do
      subject.name = 'Chris Cringle'
      expect(theclass.find_by_name('Chris Cringle')).to eq(subject)
    end

    it "can reset the subjects that have been created" do
      theclass.reset_all
      expect(theclass.count).to eq(0)
    end
  end

end

RSpec.describe Artist do
	it_behaves_like "custom class" do
		let(:theclass) {Artist}
	end
end

RSpec.describe Song do
	it_behaves_like "custom class" do
		let(:theclass) {Song}
	end
end



