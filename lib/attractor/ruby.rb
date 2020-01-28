require "attractor/ruby/version"

require "attractor"
require "attractor/registry_entry"
require "attractor/calculators/base_calculator"
require "attractor/calculators/ruby_calculator"
require "attractor/detectors/base_detector"
require "attractor/detectors/ruby_detector"

module Attractor
  module Ruby
    class Error < StandardError; end

    Attractor.register(Attractor::RegistryEntry.new(type: "rb", detector_class: RubyDetector, calculator_class: RubyCalculator))
  end
end
