# frozen_string_literal: true

require "flog"

module Attractor
  class RubyCalculator < BaseCalculator
    def initialize(file_prefix: "", ignores: "", minimum_churn_count: 3, start_ago: 365 * 5, verbose: false)
      super(file_prefix: file_prefix, ignores: ignores, file_extension: "rb", minimum_churn_count: minimum_churn_count, start_ago: start_ago, verbose: verbose)
      @type = "Ruby"
    end

    def calculate
      super do |change|
        flogger = Flog.new(all: true)
        flogger.flog(change[:file_path])
        complexity = flogger.total_score
        details = build_details(flogger.totals, flogger.method_locations)
        [complexity, details]
      end
    end

    private

    def build_details(totals, method_locations)
      totals.to_h do |signature, score|
        detail = {"score" => score}
        if (location = method_locations[signature])
          detail["line"], detail["end_line"] = location[/:(.+)/, 1].split("-").map(&:to_i)
        end
        [signature, detail]
      end
    end
  end
end
