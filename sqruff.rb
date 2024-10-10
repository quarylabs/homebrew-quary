# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.19.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.19.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "64349b749041a56d38b82013327196d3e03e8862df67d169c814105a8ce21605"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.19.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "00c25efcc2bf2645179bfa73fd4d98c5f07724401f6bed422433ce15ae56bc00"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.19.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "1e92d0f3e5bd790a77e495424695f12573e742b5ac95e42a2881df7d979e0efb"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
