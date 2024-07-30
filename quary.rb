# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.1/quary-macos-x86_64-gnu.zip"
    sha256 "c546912e9211abc2a4a6c41a55f7859b1dc1f3e110d3b0b878a53d0a0f93df8e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.1/quary-macos-aarch64-gnu.zip"
    sha256 "ccb9802648baf04e6ab2ba087babd3fc6a5c5ede5ff04b4651fd2731de5b98d8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.1/quary-linux-x86_64-gnu.zip"
    sha256 "2665da0313c62a811c472cf5ff16ea8cb98785cd0a8b363aebf9edab76e6ba95"
  end

  def install
    bin.install "quary" => "quary"
  end
end
