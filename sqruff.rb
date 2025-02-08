# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.4"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.4/sqruff-darwin-aarch64.tar.gz"
    sha256 "d8156a8d699ae9838b2615a57ebf11d3c46a6f2d457b419443134dc1a64b994e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.4/sqruff-darwin-x86_64.tar.gz"
    sha256 "6e545a3b5a9fb01378a4a7158457e33d7ce5a5190e86ffd83b97fe4253a183b7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.4/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "b47b5e8f3164c0d9b2d89f24a3dbb57c0fe068e13955be59486b6951445d9c68"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
