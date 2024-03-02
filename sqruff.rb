# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.0.6"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.6/sqruff-darwin-aarch64.tar.gz"
    sha256 "c272692e37bdea5ec1c0f279acfa11f48820f71c54b71f4bffde848c075c6155"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.6/sqruff-darwin-x86_64.tar.gz"
    sha256 "7657ad498094a5dd944e3ab6746b9ebe6239c3fdf6466067c21684d409d2b49c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.6/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "cd819ab9e2ce7ca9d14a93574daa02dca53ac251ac6897223d6915ceededa8f0"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
