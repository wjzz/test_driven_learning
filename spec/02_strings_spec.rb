RSpec.context "String in Ruby" do
    it "are mutable by default" do
        s = "123"
        s[0] = '01'

        expect(s).to eq '0123'
    end

    it "have different identify even with same contents" do
        s1 = "123"
        s2 = "123"
        expect(s1).not_to be s2
    end

    describe "can be frozen" do
        before(:each) {
            @s = "123".freeze
        }

        it "and it can be checked" do
            expect(@s.frozen?).to be_truthy    
        end

        it "and they become immutable" do
            expect {
                @s[0] = "01"
            }.to raise_error FrozenError
        end

        it "and they become of the same identify if eql" do
            s1 = "123".freeze
            s2 = "123".freeze
            expect(s1).to be s2
        end
    end 
end
