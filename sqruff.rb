# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.21"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.21/sqruff-darwin-aarch64.tar.gz"
    sha256 "a6a8d798a421e27dbd884b39e292f7101f998e0dfc9882bca80c775699a1be35"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.21/sqruff-darwin-x86_64.tar.gz"
    sha256 "7af420f282d21dc50569c8aed39296e98164f033692de84171e23f22305e78ae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.21/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "74704510b5bec5d99417b84d4c10a4008590e0e1c40e97361f871b72f1041293"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
