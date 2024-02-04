# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.78/quary-0.0.78-quary-macos-x86_64-gnu.zip"
    sha256 "453a100e75432a278abb854af359b05e721e1cc1d4023f6f0d27d82793f64bd8"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.78/quary-0.0.78-quary-macos-aarch64-gnu.zip"
    sha256 "fb50cc562bd0fb26409986574299407a086cd4fb9325df2b945177c879a90495"
  end
  def install
    bin.install "quary-0.0.78" => "quary"
  end
end
