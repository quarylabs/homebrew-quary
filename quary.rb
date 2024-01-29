# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.74/quary-0.0.74-quary-macos-x86_64-gnu.zip"
    sha256 "2a336e6c7807414a5ac82766d169646d3ebb51d672feb9909af4c74067a1adf6"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.74/quary-0.0.74-quary-macos-aarch64-gnu.zip"
    sha256 "7969916c6827453d64515f2db71c1f2e8ed212c9817bbe9fa973239ba378c1f8"
  end
  def install
    bin.install "quary-0.0.74" => "quary"
  end
end
