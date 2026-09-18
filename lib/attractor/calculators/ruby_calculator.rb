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
      totals.each_with_object({}) do |(signature, score), details|
        detail = {"score" => score}

        location = method_locations[signature]
        if location
          _, line_range = location.split(":", 2)
          start_line, end_line = line_range.split("-", 2).map(&:to_i)
          detail["line"] = start_line
          detail["end_line"] = end_line
        end

        details[signature] = detail
      end
    end
  end
end
