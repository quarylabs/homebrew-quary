# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.0/quary-macos-x86_64-gnu.zip"
    sha256 "166673711c943875af1452d0a115f7ea047eb1d69b241bbb42a9d6c8940f81b6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.0/quary-macos-aarch64-gnu.zip"
    sha256 "618440d06cfc5173ce444d4960cb979689a8b9eb411f26b3c8c8b4c0eb950d2b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.4.0/quary-linux-x86_64-gnu.zip"
    sha256 "f4f10bec0afcb3c521e10b09a150b1bc1126e87301854442ac66979b94a08962"
  end

  def install
    bin.install "quary" => "quary"
  end
end
