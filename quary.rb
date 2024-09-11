# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.7.0/quary-macos-x86_64-gnu.zip"
    sha256 "9fc277f3ed724643eb197f1c2654c9e56c001fcb806c3bfaa657d667db4c922d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.7.0/quary-macos-aarch64-gnu.zip"
    sha256 "47ac8ffcd7d4528c6bfd3bbf9cb4ac388f25e4599fe3013047ad968d91af26bd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.7.0/quary-linux-x86_64-gnu.zip"
    sha256 "821e4e4d65747889d25c256e73894712efbd03b1ebbea2d2b7a5824ebbf11d37"
  end

  def install
    bin.install "quary" => "quary"
  end
end
