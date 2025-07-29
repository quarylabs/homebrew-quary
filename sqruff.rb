# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.29.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "26928b3b3b4b4198c9c6cc9b16ae567ec2d7d89987c7203550360b7dbab3175f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "4aee74be555763c7ee039230ad579d5fe843afbd6a6ba3ede4dfdc88579ff4e7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "02958cf58e4b6f7991a79817767a962bf1ccc63337146620cb002ff890076cc7"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
