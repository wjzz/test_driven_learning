def thrice
    yield
    yield
    yield
end

RSpec.describe 'thrice' do
    it "executes the given block three time" do
        a = []
        thrice do
            a << 1
        end
        expect(a).to eql([1,1,1])
    end
end


