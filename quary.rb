# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.112/quary-0.0.112-quary-macos-x86_64-gnu.zip"
    sha256 "3ce79bd673315c74d9cbbd6e154bed8c4c84c2475297a681d050015a402d2a7b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.112/quary-0.0.112-quary-macos-aarch64-gnu.zip"
    sha256 "149b4dee62f29317ec2d95b5c900810c2c29194026916a2fcb2c973e6e625391"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.112/quary-0.0.112-quary-linux-x86_64-gnu.zip"
    sha256 "25edf67debc3ea9c8ac58d65c7b9a6d969dcb1190d61f71e810818bbe27ef78a"
  end

  def install
    bin.install "quary" => "quary"
  end
end
