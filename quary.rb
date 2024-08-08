# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.3/quary-macos-x86_64-gnu.zip"
    sha256 "7fe08588b041bcaf2ddf8692c4a9e4e63ae8fde48aa912be007f389387e24c24"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.3/quary-macos-aarch64-gnu.zip"
    sha256 "d2e538e43c374642de4a80dd546bc2a15ca92545831662ae43dae501d0a19af1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.3/quary-linux-x86_64-gnu.zip"
    sha256 "2d05e940fb9ddd6826eec59a176f2ea931fd0d708960417c3b7b51f5ded709ca"
  end

  def install
    bin.install "quary" => "quary"
  end
end
