RSpec.context "Classes in Ruby" do
    it "Fixnums have class integer" do
        expect(1.class).to eql(Integer)
    end

    it "Bignums have class integer" do
        n = 10 ** 50
        expect(n.class).to eql(Integer)
    end
end


