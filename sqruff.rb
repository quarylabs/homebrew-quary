# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.5.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.5.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "340e174ec40ada7c3791832e12eaf532bff612d99eb20108b0d8a7c4fd6572be"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.5.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "300e110c66b3c043790ac7bb8c2a8016060ced478f10388e457965f0afa730e3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.5.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "77a104c04cf315889db0ff990281868228e31a4456b467a2a9e110ece3d20ab7"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
