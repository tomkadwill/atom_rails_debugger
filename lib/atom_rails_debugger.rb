require "atom_rails_debugger/version"

module AtomRailsDebugger
  def self.included(base)
    base.class_eval do
      before_filter :eval_breakpoints
    end
  end

  def eval_breakpoints
    # Remove all breakpoints before re-evaluating the breakpoints file
    Byebug.breakpoints.reject! { true }

    File.open(Rails.root.join('.breakpoints'), "r").each_line do |file_line|
      file, line = file_line.strip.split(":")
      Byebug::Breakpoint.add(file, line.to_i)
    end
    Byebug.start
  end
end
