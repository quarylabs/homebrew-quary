# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.2.0/quary-macos-x86_64-gnu.zip"
    sha256 "50ffce6268f080fff333b8f25245cdf48e7ba6f4a217bb19c0500e1074414d66"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.2.0/quary-macos-aarch64-gnu.zip"
    sha256 "d9f88c1077d668e0d19f18ca0daf3fce7bcef5ea1634d54b0179ec4d82db04a6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.2.0/quary-linux-x86_64-gnu.zip"
    sha256 "512c0d6c0327456ba6eb45f6a34157f82e4e145b3bbf5443925dbec68ab9657c"
  end

  def install
    bin.install "quary" => "quary"
  end
end
