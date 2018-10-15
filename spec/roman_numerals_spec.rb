require 'roman_numerals'

describe RomanNumerals do
  subject { described_class.new.convert(digit) }

  context "given 0" do
    let(:digit) { 0 }

    it { is_expected.to be_empty }
  end

  context "given 1" do
    let(:digit) { 1 }

    it { is_expected.to eq "I" }
  end

  context "given 2" do
    let(:digit) { 2 }

    it { is_expected.to eq "II" }
  end

  context "given 3" do
    let(:digit) { 3 }

    it { is_expected.to eq "III" }
  end

  context "given 5" do
    let(:digit) { 5 }

    it { is_expected.to eq "V" }
  end

  context "given 6" do
    let(:digit) { 6 }

    it { is_expected.to eq "VI" }
  end

  context "given 7" do
    let(:digit) { 7 }

    it { is_expected.to eq "VII" }
  end

  context "given 10" do
    let(:digit) { 10 }

    it { is_expected.to eq "X" }
  end

  context "given 20" do
    let(:digit) { 20 }

    it { is_expected.to eq "XX" }
  end

  context "given 30" do
    let(:digit) { 30 }

    it { is_expected.to eq "XXX" }
  end

  context "given 11" do
    let(:digit) { 11 }

    it { is_expected.to eq "XI" }
  end

  context "given 31" do
    let(:digit) { 31 }

    it { is_expected.to eq "XXXI" }
  end

  context "given 35" do
    let(:digit) { 35 }

    it { is_expected.to eq "XXXV" }
  end

  context "given 36" do
    let(:digit) { 36 }

    it { is_expected.to eq "XXXVI" }
  end

  context "given 38" do
    let(:digit) { 38 }

    it { is_expected.to eq "XXXVIII" }
  end

  context "given 4" do
    let(:digit) { 4 }

    it { is_expected.to eq "IV" }
  end

  context "given 9" do
    let(:digit) { 9 }

    it { is_expected.to eq "IX" }
  end

  context "given 51" do
    let(:digit) { 51 }

    it { is_expected.to eq "CI" }
  end

  context "given 49" do
    let(:digit) { 49 }

    it { is_expected.to eq "IC" }
  end
end
