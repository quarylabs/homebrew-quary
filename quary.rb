# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.103/quary-0.0.103-quary-macos-x86_64-gnu.zip"
    sha256 "5bbe0eed02bc645afd9d1bbc99c2e85e21b231a3f47c68c5138b94a7ef351515"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.103/quary-0.0.103-quary-macos-aarch64-gnu.zip"
    sha256 "0854d76dee2789999df2caf14c1574a2c27ab877579884e1c49b7f7497193e3f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.103/quary-0.0.103-quary-linux-x86_64-gnu.zip"
    sha256 "1890154e4c8c0005c07ea602b80c18e6d1efacc058b51b57e894de7099b1a525"
  end

  def install
    bin.install "quary" => "quary"
  end
end
