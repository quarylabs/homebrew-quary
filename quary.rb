# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.0/quary-macos-x86_64-gnu.zip"
    sha256 "ee786e7403446949f6ef0ff6ad21d0d46dd49e083cddbf6128ec4f5c87795a16"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.0/quary-macos-aarch64-gnu.zip"
    sha256 "47c4d2de6f73e9bdffd111ddb41917155e0929015719273ec7c2d2779108cba5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.0/quary-linux-x86_64-gnu.zip"
    sha256 "fed105054b54e0911e7792cb1b330b459f75796ebe89170fc89843eb6492f1f2"
  end

  def install
    bin.install "quary" => "quary"
  end
end
