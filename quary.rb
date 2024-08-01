# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.2/quary-macos-x86_64-gnu.zip"
    sha256 "be646fb54142b200dcc2c44fdc2734e88c5484841f34fd3c5cca6fd2bbf470c1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.2/quary-macos-aarch64-gnu.zip"
    sha256 "6503af0932478b760a1976341802f5f3cd27b9874e459f3217b60d83262cd7f3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.2/quary-linux-x86_64-gnu.zip"
    sha256 "4917d707ac2a0434b78e4d9d3a99e7d459175c5db0fb84baee68c9e96f9c68dd"
  end

  def install
    bin.install "quary" => "quary"
  end
end
