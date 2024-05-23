# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.1.7/quary-macos-x86_64-gnu.zip"
    sha256 "698597bbad1167f42364d4442ef06babbae2d35e2925a8fed61ff2e1277d95c2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.1.7/quary-macos-aarch64-gnu.zip"
    sha256 "1835626d2349be51689c0bf87f169176244d026cfda04fe6ec40728ad9745d5d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.1.7/quary-linux-x86_64-gnu.zip"
    sha256 "dbc63ce6c7f2bd5593d8713809c22cc6499fd519e3513f41dd2bb85cffa6a63b"
  end

  def install
    bin.install "quary" => "quary"
  end
end
