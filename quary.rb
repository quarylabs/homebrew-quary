# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.104/quary-0.0.104-quary-macos-x86_64-gnu.zip"
    sha256 "b03570c29f3f57ad2bb1339adad866146c5431e0e052add4b29a7b04cb2b656c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.104/quary-0.0.104-quary-macos-aarch64-gnu.zip"
    sha256 "a07173039b66bb1e6c7eff30cbdf1d34302416aa152f5f8a032a7070ca00e931"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.104/quary-0.0.104-quary-linux-x86_64-gnu.zip"
    sha256 "135d0ee0e7de5e0f8861508e358be3cb910acd4717685ab505bf7a82b9b27386"
  end

  def install
    bin.install "quary" => "quary"
  end
end
