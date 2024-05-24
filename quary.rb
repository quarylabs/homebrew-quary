# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.1.9/quary-macos-x86_64-gnu.zip"
    sha256 "63a6778e1d0468a88d9bec8beae1d62147e781915ae6167b19fccf43b61cd5df"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.1.9/quary-macos-aarch64-gnu.zip"
    sha256 "6fca2fce7376dbc81538d4faa29e7e98115a7af0918712cf43a0ea5e72431746"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.1.9/quary-linux-x86_64-gnu.zip"
    sha256 "e985125a6a3f3a1ac7dad6c30a874539ff708583d942d6aea79e0a8339cf94a8"
  end

  def install
    bin.install "quary" => "quary"
  end
end
