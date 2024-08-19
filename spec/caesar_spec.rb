require_relative '../caesar'
RSpec.describe 'Caesar Cipher' do
  it "shifts letters by 2" do
    expect(caesar_cipher('abc', 2)).to eq('cde')
  end
  
  it "shifts letters by 5" do
    expect(caesar_cipher('abc', 5)).to eq('fgh')
  end
  
  it "wraps around the end of the alphabet" do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end
  
  it "keeps the same case for shifted letters" do
    expect(caesar_cipher('AbC', 2)).to eq('CdE')
  end
  
  it "keeps non-alphabetical characters unchanged" do
    expect(caesar_cipher('hello!', 2)).to eq('jgnnq!')
  end
  
  it "handles negative shift values" do
    expect(caesar_cipher('abc', -3)).to eq('xyz')
  end
  
  it "returns an empty string when given an empty string" do
    expect(caesar_cipher('', 2)).to eq('')
  end
end