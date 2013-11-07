describe Array do
  context "when empty" do
    it "returns nil when using []" do
      expect(subject[0]).to be_nil
    end

    it "raises an error when using fetch" do
      expect { subject.fetch 0 }.to raise_error
    end
  end
end
