# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.17.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.17.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "278f16c87cb72007d3fce0cab1f013dccabcc3c1698378c32e8cd38725f721cd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.17.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "a807edce68900e930de64a45c46733c6516e7e2c906f3c9282ff778e3ddecad1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.17.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "e5832772451f0a0e14a3fa127750d641ed6f7c233debcb468822871ab272279a"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
