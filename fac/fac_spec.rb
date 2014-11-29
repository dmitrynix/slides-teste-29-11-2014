require './fac'

describe Fac do
  it 'deve retornar o número 1 como fatorial de 1' do
    expect(Fac.new(1).get!).to eq 1
  end

  it 'deve retornar o número 40.320 como fatorial de 8' do
    expect(Fac.new(8).get!).to eq 40320
  end

  it 'deve retornar a soma de dois fatoriais' do
    expect(Fac.new(8).soma(2)).to eq 40_322
  end

  context 'a classe deve responder pelos métodos de instância' do
    it 'deve retornar o número 1 como fatorial de 1' do
      expect(Fac.get(1)).to eq 1
    end

    it 'deve retornar o número 40.320 como fatorial de 8' do
      expect(Fac.get(8)).to eq 40320
    end

    it 'deve retornar a soma de dois fatoriais' do
      expect(Fac.soma(8, 2)).to eq 40_322
    end
  end

  context 'sou fodão' do
    {
      1 => 1,
      2 => 2,
      3 => 6,
      4 => 24,
      5 => 120,
      8 => 40_320
    }.each do |key, value|
      it "factorial of #{key} should be #{value}" do
        expect(Fac.get(key)).to eq value
      end
    end
  end
end
