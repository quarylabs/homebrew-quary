# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.11"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.11/sqruff-darwin-aarch64.tar.gz"
    sha256 "2ff240022305e5541037a4e27a6baa2e26cba822e34b95c72c903241e5e3b060"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.11/sqruff-darwin-x86_64.tar.gz"
    sha256 "e27aeb4ada6b7ed936e7d838dd12582b52d56365b92654017e8da8b31222a00e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.11/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "e97f5432d2e092d6f3565f1bc445b03ec8f340cf8683164f835151b3b3fbb62f"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
