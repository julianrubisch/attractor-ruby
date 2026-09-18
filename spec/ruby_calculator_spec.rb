require "spec_helper"

RSpec.describe Attractor::RubyCalculator do
  describe "#calculate" do
    let(:file_path) { "#{RSPEC_FIXTURES_PATH}/ruby_app/lib/example.rb" }
    let(:churn_calc_instance) { instance_double(::Churn::ChurnCalculator) }

    before do
      allow(::Churn::ChurnCalculator).to receive(:new).and_return(churn_calc_instance)
      allow(churn_calc_instance).to receive(:report).and_return(
        churn: {changes: [{file_path: file_path, times_changed: 5}]}
      )
      allow(Attractor::Cache).to receive(:read).and_return(nil)
      allow(Attractor::Cache).to receive(:write)
      allow(Attractor::Cache).to receive(:persist!)
    end

    it "returns details with scores and source locations" do
      calculator = described_class.new
      values = calculator.calculate

      expect(values.size).to eq(1)
      value = values.first

      expect(value.file_path).to eq(file_path)
      expect(value.complexity).to be_a(Numeric)
      expect(value.details).to match(
        "Example::class_method" => {
          "score" => a_value > 0,
          "line" => 2,
          "end_line" => 4
        },
        "Example#instance_method" => {
          "score" => a_value > 0,
          "line" => 6,
          "end_line" => 8
        }
      )
    end
  end
end
