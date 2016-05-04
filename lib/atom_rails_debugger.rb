require "atom_rails_debugger/version"

module AtomRailsDebugger
  def self.included(base)
    File.open(Rails.root.join('breakpoints.txt'), "r").each_line do |file_line|
      file, line = file_line.strip.split(":")
      Byebug::Breakpoint.add(file, line.to_i)
    end
    Byebug.start
  end
end
