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
    url "https://github.com/quarylabs/quary/releases/download/v0.8.0/quary-linux-x86_64-gnu.zip"
    sha256 "0bb21923ef241f9e43e3255c94fb3e6cc0ea31b61d6eac14651a45920be228e7"
  end

  def install
    bin.install "quary" => "quary"
  end
end
