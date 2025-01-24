# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.24.3"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.3/sqruff-darwin-aarch64.tar.gz"
    sha256 "7aedcbb8fcee6b4452e4015dff5fdacae7eed890f2924206b6705b3f875ffbee"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.3/sqruff-darwin-x86_64.tar.gz"
    sha256 "90aa673e77d8fd70e311e7a60fb77c335f72c4553e138225e95d75fc6901add1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.3/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "b8fbce5870952aa9620a7587f7be2bf42d5ddae4c4a48c613ac4c57f8ba97ce0"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
