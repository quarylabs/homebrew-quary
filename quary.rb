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
    url "https://github.com/quarylabs/quary/releases/download/v0.3.2/quary-linux-x86_64-gnu.zip"
    sha256 "a3888d4bac3c47a581b998cb0f1cf010aeff824e325546dfc39261f28b30314a"
  end

  def install
    bin.install "quary" => "quary"
  end
end
