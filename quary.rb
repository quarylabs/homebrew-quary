# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.6.1/quary-macos-x86_64-gnu.zip"
    sha256 "256a8714c46c5d723c673e8cd6c8dd7568f3ea5015e87449f33c6de65fe33af8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.6.1/quary-macos-aarch64-gnu.zip"
    sha256 "c42aa8294e2a1dc24d90815c4d27a8408a5b14b43302f34c7a9c43d34be3f3d0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.6.1/quary-linux-x86_64-gnu.zip"
    sha256 "dd545032183bba005245120eb734dc390017ebabc1f5815ff2ea632e5bbf70d9"
  end

  def install
    bin.install "quary" => "quary"
  end
end
