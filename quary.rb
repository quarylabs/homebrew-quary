# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url ""
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url ""
    sha256 ""
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.9.0/quary-linux-x86_64-gnu.zip"
    sha256 "38149bed299e2ef8d47642c73354b0104b8c122f84341ab46216d076f8c49f6f"
  end

  def install
    bin.install "quary" => "quary"
  end
end
