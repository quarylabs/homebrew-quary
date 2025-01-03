# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.23.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.23.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "459962d99a0f719853a22d30fe7bf50bc3627a0077d3b398208f752954087ccb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.23.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "f0c1052a492eef94634b04c6610bd15ca349553eb416c7ce71a0732c516d5c16"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.23.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "df72802e1ebac14e2d93466f026f1dce55d0e96db8dcc48b1fbe242c5e073356"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
